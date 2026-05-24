FROM --platform=$TARGETOS/$TARGETARCH debian:trixie-slim

LABEL author="Raichu" maintainer="Raichu"
LABEL org.opencontainers.image.source="https://github.com/RaichuTD/rust-egg-trixie"
LABEL org.opencontainers.image.licenses=MIT

RUN apt update && apt upgrade -y \
    && apt install -y --no-install-recommends \
        gcc g++ libgcc-s1 libc++-dev gdb libc6 git wget curl tar zip unzip \
        binutils xz-utils liblzo2-2 cabextract iproute2 net-tools netcat-openbsd \
        libatomic1 libsdl2-2.0-0 libfontconfig1 libssl-dev \
        sqlite3 libsqlite3-dev locales ffmpeg gnupg2 apt-transport-https \
        software-properties-common ca-certificates tzdata liblua5.4-0 \
        libz-dev rapidjson-dev lib32gcc-s1 lib32stdc++6 libmariadb-dev \
    && apt install -y libunwind-dev || true \
    && update-locale lang=en_US.UTF-8 \
    && dpkg-reconfigure --frontend noninteractive locales \
    && useradd -m -d /home/container -s /bin/bash container

USER container
ENV USER=container HOME=/home/container
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD [ "/bin/bash", "/entrypoint.sh" ]
