A set of Docker builds for a building utilities on various edge device architectures. Useful for installation onto various home devices (Routers, NAS, etc).

## Build

    git clone https://github.com/cwilko/edge-utils.git 
    cd edge-utils
    docker build -t edge-utils:<util> <util>

You can then run your image with the following command

    mkdir bin
    docker run --rm -v `pwd`/<arch>/bin:/usr/local/bin edge-utils:<util>

After running the above command, the ARM binaries for these utilities can be found in the local bin directory.

## Run

Aleternatively, run the image directly from Docker Hub, e.g.:

    docker run --rm -v `pwd`/arm/bin:/usr/local/bin cwilko/edge-utils:unfsd
    or
    docker run --rm --build-arg VERSION=<TELEGRAF VERSION> -v `pwd`/mips/bin:/usr/local/sbin cwilko/edge-utils:telgraf


