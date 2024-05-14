#!/bin/bash

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

ansible-playbook -i $DIR/src/hosts.yml $DIR/src/setup.yml --become -v -e ignore_errors=yes

