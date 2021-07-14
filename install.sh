#!/bin/bash

USER_NAME=developer
USER_HOME=/home/developer

set -e

echo "-- Executing dotfiles install.sh"

set -x

sudo -u "$USER_NAME" sed -i -e 's/^SSH_AUTH_SOCK/# SSH_AUTH_SOCK/' "${USER_HOME}/.ssh/environment"

set +x

echo "-- Done executing dotfiles install.sh"
