#!/usr/bin/env bash

source ./variables.sh

encrypt() {

    input_file=$1
    output_file=$2

    openssl aes-256-cbc -e -md sha256 \
      -in  "${input_file}" \
      -out "${output_file}" \
      -pass pass:"${openssl_password}"
}

decrypt() {

    input_file=$1
    output_file=$2

    openssl aes-256-cbc -d -md sha256 \
      -in  "${input_file}" \
      -out "${output_file}" \
      -pass pass:"${openssl_password}"
}

decrypt_and_add_to_circle() {

    input_file=$1
    printf "\n\n** Decrypting the %s file and adding it to Circle's BASH_ENV.\n" "${input_file}"

    openssl aes-256-cbc -d -md sha256 \
      -in  "${input_file}" \
      -pass pass:"${openssl_password}" \
      >> "${BASH_ENV}"

    printf "\n ** Finished decrypting the %s file and adding it to Circle's BASH_ENV.\n" "${input_file}"
}
