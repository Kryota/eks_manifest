#!/bin/bash

docker run \
    -v $(pwd):/share \
    -w /share \
    -v $(pwd)/.aws:/root/.aws \
    -v $(pwd)/.kube:/root/.kube \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -it dmmsearch/awscli:latest
