#!/bin/sh
set -e

on_exit () {
	[ $? -eq 0 ] && exit
	echo 'ERROR: Feature "Neovim (from source)" (ghcr.io/duduribeiro/devcontainer-features/neovim) failed to install!'
}

trap on_exit EXIT

set -a
. ../devcontainer-features.builtin.env
. ./devcontainer-features.env
set +a

echo ===========================================================================

echo 'Feature       : Neovim (from source)'
echo 'Description   : A feature to install Neovim building from source'
echo 'Id            : ghcr.io/duduribeiro/devcontainer-features/neovim'
echo 'Version       : 1.1.0'
echo 'Documentation : '
echo 'Options       :'
echo '    VERSION="stable"'
echo 'Environment   :'
printenv
echo ===========================================================================

chmod +x ./install.sh
./install.sh
