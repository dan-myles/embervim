#!/bin/bash
# This script is used to copy new configuration updates to this repository.

echo "Removing old config files..."
rm -rd nvim/

echo "Copying new config files..."
cp -R ~/.config/nvim/ nvim/

echo "Finished!"
