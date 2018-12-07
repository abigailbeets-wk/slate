#!/usr/bin/env bash

rc=0

until $(curl --output /dev/null --silent --head --fail http://slate:8000/s/sa-tools-integrations-docs/); do
    printf '.'
    ((c++)) && ((c==10)) && break
    sleep 5
done

curl -sSf http://slate:8000/s/sa-tools-integrations-docs/ > /dev/null
