#!/usr/bin/env bash

export openssl_password=$CIRCLECI_ENCRYPTED_VARIABLES_OPENSSL_PASSWORD

declare -a environments=("common" "non-prod" "dev" "staging" "prod")

if [ "${CIRCLE_BRANCH}" != "prod" ];
  then
    declare -a ci_environments=("common" "non-prod" "${CIRCLE_BRANCH}")
  else
    declare -a ci_environments=("common" "${CIRCLE_BRANCH}")
fi
