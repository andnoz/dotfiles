#!/bin/bash

set -ex

echo "-- Executing dotfiles install.sh"

sudo -u developer sed -i -e 's/^SSH_AUTH_SOCK/# SSH_AUTH_SOCK/' /home/developer/.ssh/environment

sudo -u developer git config --global user.name "Andrea Lorenzetti"
sudo -u developer git config --global user.email "andrea.lorenzetti@nozominetworks.com"

# sudo -u developer cp -rf id_rsa.pub /home/developer/.ssh/id_rsa.pub

echo "-- Done executing dotfiles install.sh"
