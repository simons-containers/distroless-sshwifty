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

## Building

| Arg | Description |
|---|---|
| `SSHWIFTY_VERSION` | Version of Sshwifty to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-sshwifty:$(yq -r .sshwifty versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) \
  -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Sshwifty**, **glibc**, **tzdata**, and **Mozilla CA Certificates**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Sshwifty** - Web SSH & Telnet (WebSSH & WebTelnet client)  
  https://github.com/nirui/sshwifty

