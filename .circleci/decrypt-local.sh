#!/usr/bin/env bash

source ./functions.sh

for environment in "${environments[@]}"
    do
        decrypt "./env.encrypted/${environment}" "./env.decrypted/${environment}"
    done
