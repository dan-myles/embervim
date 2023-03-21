#!/bin/bash

echo "Removing old config files..."
rm -rd nvim/

echo "Copying new config files..."
cp -R ~/.config/nvim/ nvim/

echo "Finished!"
