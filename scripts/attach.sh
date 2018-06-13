#!/usr/bin/env bash

set -euo pipefail

DRIVE=${1:-/dev/sda2}
STORE_NAME=${2:-store}

sudo cryptsetup luksOpen $DRIVE $STORE_NAME
sudo mount /dev/mapper/$STORE_NAME $HOME/mnt
