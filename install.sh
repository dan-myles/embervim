#!/bin/bash

read -r -p "Old NeoVim configuration files will be deleted. Are you sure you want to proceed? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo "Cloning repository..."
    git clone https://github.com/danlikestocode/embervim
    echo "Changing directory..."
    cd embervim
    echo "Installing new configuration files..."
    echo "Removing old configuration files..."
    echo "WARN: Old configuration files will be deleted!"
    rm -rd ~/.config/nvim/
    echo "Copying new configuration files..."
    cp -R ./nvim/ ~/.config/nvim/
    echo "Finished!"
    echo "Make sure to clean up the created Git repository!"
else
    echo "Stopped installation!"
fi





