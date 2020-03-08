FROM debian:buster
MAINTAINER holishing
COPY build.sh /build.sh
RUN cat /etc/apt/sources.list \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get upgrade -y  \
    && apt-get install -y build-essential gcc-multilib autoconf automake autotools-dev gfortran gfortran-mingw-w64 gfortran-mingw-w64-i686 gfortran-mingw-w64-x86-64 \
    && chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
