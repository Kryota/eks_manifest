#!/bin/bash

while :
do
    CMD=`curl ${elb_endpoint}/hello`

    if [[ ${CMD} =~ ^.*\{\"hello\"\:\"world\".* ]]; then
        echo "200OK Continue"
    else
        printf "\e[31mERROR\e[m"
        break
    fi
    sleep 0.5
done
