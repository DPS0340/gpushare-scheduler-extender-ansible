#!/bin/bash

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

ansible-playbook -i $DIR/src/hosts.yaml $DIR/src/setup.yaml -v -e ignore_errors=yes

