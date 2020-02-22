#!/usr/bin/env bash

source ./functions.sh

for environment in "${environments[@]}"
    do
        encrypt "./env.original/${environment}" "./env.encrypted/${environment}"
    done
