#!/bin/bash

err_report() {
    echo "Error on line $1"
}

trap 'err_report $LINENO' ERR

# declare enviroment variables
IMAGE_TAG="bde2020/hadoop-base:1.1.0-hadoop2.7.6-py3-java8"

# Build image, with local Dockerfile
docker build -t $IMAGE_TAG .
