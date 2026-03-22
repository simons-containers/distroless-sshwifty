FROM archlinux:base-devel-20260308.0.497099 AS builder

ARG SSHWIFTY_VERSION
ARG SSHWIFTY_REPO=https://github.com/nirui/sshwifty

RUN pacman -Sy --noconfirm git go npm >/dev/null

WORKDIR /build/sshwifty
COPY ./ui.patch /tmp/ui.patch
RUN git clone ${SSHWIFTY_REPO} . \
  && git checkout ${SSHWIFTY_VERSION} \
  && mv /tmp/ui.patch ./ \
  && git apply ui.patch \
  && npm install >/dev/null \
  && npm run build >/dev/null

FROM scratch

ARG SSHWIFTY_VERSION

COPY --from=builder /build/sshwifty/sshwifty /bin/sshwifty

ENV SSHWIFTY_LISTENPORT=8080
EXPOSE 8080

ENTRYPOINT ["/bin/sshwifty"]

LABEL org.opencontainers.image.title="distroless sshwifty"
LABEL org.opencontainers.image.description="distroless sshwifty"
LABEL org.opencontainers.image.version="${SSHWIFTY_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-sshwifty"
LABEL build.sshwifty.version="${SSHWIFTY_VERSION}"
