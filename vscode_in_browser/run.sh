#!/bin/bash

set -e

name=${DS_NAME:-vscode_ds-py3}
port=${DS_PORT:-4000}
src=${DS_SRC:-folder_with_your_code}
image=${DS_IMAGE:-vscode/container_2}
connection_token=$(<token)

docker run -d --rm --name ${name} \
  --pid=host \
  -e TOKEN=${connection_token} \
  -p ${port}:3000 \
  -v ${src}:/coding_folder \
  vscode/container_2
