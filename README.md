A Docker build for a selection of arm32v7 utilities. Useful for installation onto various home devices (Routers, NAS, etc).

## Build

    git clone https://github.com/cwilko/arm-utils.git 
    cd arm-utils
    mkdir bin
    docker build -t arm-utils:arm32v7 .

You can then run your image with the following command

    docker run --rm -v `pwd`/bin:/usr/local/sbin arm-utils:arm32v7

After running the above command, the ARM binaries for these utilities can be found in the local bin directory.

## Run

Aleternatively, run the image directly from Docker Hub

    docker run --rm -v `pwd`/bin:/usr/local/sbin cwilko/arm-utils:arm32v7

