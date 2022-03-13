#!/usr/bin/env bash

name="LoopMintPy"

case $1 in
    build) docker build -t $name .;;
    *) docker run -it --rm --name $name -v $PWD:/$name:rw $name $@;;
esac
