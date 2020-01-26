FROM ubuntu:xenial

RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    gcc-arm-linux-gnueabihf \
    g++-arm-linux-gnueabihf \
    bison \
    flex  \
    git

RUN mkdir -p /utils

WORKDIR /utils

# NFS Service - UNFS3
RUN git clone https://github.com/unfs3/unfs3.git

WORKDIR "/utils/unfs3"

RUN ./bootstrap

RUN ./configure --target=arm-linux-gnueabihf --host=arm-linux-gnueabihf --build=x86_64-linux  CC=/usr/bin/arm-linux-gnueabihf-gcc CPPFLAGS="-I/usr/arm-linux-gnueabihf/include/" CFLAGS="-nostdlib" LDFLAGS="-Wl,-rpath-link=/usr/arm-linux-gnueabihf/lib/ -L/usr/arm-linux-gnueabihf/lib/" LIBS="-lc"

RUN sed -i '1i%option noyywrap' ./Config/exports.l

RUN make

CMD cd /utils/unfs3
CMD make install



