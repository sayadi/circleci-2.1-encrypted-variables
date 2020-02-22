#!/usr/bin/env bash

source ./functions.sh

for environment in "${ci_environments[@]}"
    do
        decrypt_and_add_to_circle ./env.encrypted/"${environment}"
    done
