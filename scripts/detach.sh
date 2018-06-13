#!/usr/bin/env bash

set -euo pipefail

DRIVE=${1:-/dev/sda2}
STORE_NAME=${2:-store}

sudo umount $HOME/mnt
sudo cryptsetup luksClose $STORE_NAME
sudo udisksctl power-off -b $DRIVE
