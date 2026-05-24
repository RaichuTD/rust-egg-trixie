# rust-egg-trixie

A Debian 13 (Trixie) Slim Docker image built for running Rust dedicated servers on Pterodactyl Panel.

## Details

- **Base OS:** Debian 13 (Trixie) Slim
- **Author:** Raichu
- **Registry:** `ghcr.io/raichutd/rust-egg-trixie:latest`
- **Auto-rebuilds:** Every Monday at 3am UTC

## Usage

Add the following image to your Pterodactyl egg: 
ghcr.io/raichutd/rust-egg-trixie:latest

## Included Packages

- Build tools: `gcc`, `g++`, `gdb`, `binutils`
- Networking: `iproute2`, `net-tools`, `netcat-openbsd`, `curl`, `wget`
- Libraries: `libsdl2`, `libfontconfig`, `libssl`, `libatomic`, `liblzo2`, `liblua5.4`, `libmariadb`, `rapidjson`
- Utilities: `git`, `zip`, `unzip`, `tar`, `xz-utils`, `ffmpeg`, `cabextract`
- 32-bit support: `lib32gcc-s1`, `lib32stdc++6`
- Locale: `en_US.UTF-8`

## Automatic Updates

This image is automatically rebuilt every Monday at 3am UTC via GitHub Actions, ensuring the latest Debian security patches are always applied.

## Related

- [Pterodactyl Panel](https://pterodactyl.io)
- [Debian Trixie](https://www.debian.org)
