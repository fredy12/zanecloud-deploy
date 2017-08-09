#!/usr/bin/env bash

BASE_DIR=$(cd `dirname $0` && pwd -P)





docker run --net=host -ti --rm \
        -v ${BASE_DIR}:${BASE_DIR} \
	    -v /var/run/docker.sock:/var/run/docker.sock \
        -e DOCKER_HOST=unix:///var/run/docker.sock  \
        -w ${BASE_DIR} \
        docker/compose:1.9.0 \
        up -d $*
