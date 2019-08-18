#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-umbru/umbrud-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/umbrud docker/bin/
cp $BUILD_DIR/src/umbru-cli docker/bin/
cp $BUILD_DIR/src/umbru-tx docker/bin/
strip docker/bin/umbrud
strip docker/bin/umbru-cli
strip docker/bin/umbru-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
