FROM debian:buster
MAINTAINER holishing
COPY build.sh /build.sh
RUN cat /etc/apt/sources.list \
    && apt-get update \
    && apt-get upgrade -y  \
    && apt-get install -y autotools-dev gfortran gfortran-mingw-w64 gfortran-mingw-w64-i686 gfortran-mingw-w64-x86-64 \
    && chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
