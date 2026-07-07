[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-sshwifty/pkgs/container/distroless-sshwifty) [![Tags](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-sshwifty/pkgs/container/distroless-sshwifty) <br> ![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/size.svg) ![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/wasted.svg) ![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/efficiency.svg) <br> ![Critical](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/critical.svg) ![High](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/high.svg) ![Medium](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/medium.svg) ![Low](https://raw.githubusercontent.com/simons-containers/distroless-sshwifty/badges/.badges/main/low.svg) <br> [![Publish Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-sshwifty/deploy.yaml?label=Publish%20Workflow&logo=github)](https://github.com/simons-containers/distroless-sshwifty/actions/workflows/deploy.yaml) [![Update Workflow](https://img.shields.io/github/actions/workflow/status/simons-containers/distroless-sshwifty/update-versions.yaml?label=Update%20Workflow&logo=github)](https://github.com/simons-containers/distroless-sshwifty/actions/workflows/update-versions.yaml) 

# Distroless Sshwifty container

Bare-bones distroless Sshwifty container image with patched warning banner.

## Running

Use configuration file or environment vars

Example:

```bash
docker run -it --rm -v ./config:/etc/sshwifty \
  -e SSHWIFTY_CONFIG=/etc/sshwifty/config.json \
  ghcr.io/simons-containers/distroless-sshwifty:latest
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Sshwifty**, **glibc**, **tzdata**, and **Mozilla CA Certificates**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Sshwifty** - Web SSH & Telnet (WebSSH & WebTelnet client)  
  https://github.com/nirui/sshwifty

