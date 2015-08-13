#!/bin/bash

# Set source and target directories
dotfiles_dir=$( cd "$( dirname "$0" )/.." && pwd )
uname=$(uname -v)

if [[ $uname =~ "Ubuntu" ]]; then
    echo "You are running on Ubuntu"
    echo "Bitmap fonts are disabled by default"
    echo "To fix this, run the following commands:"
    echo ""

    echo "cd /etc/fonts/conf.d/"
    echo "sudo rm /etc/fonts/conf.d/10*"
    echo "sudo rm -rf 70-no-bitmaps.conf"
    echo "sudo ln -s ../conf.avail/70-yes-bitmaps.conf"
    echo "sudo dpkg-reconfigure fontconfig"
    echo ""
fi

bash $dotfiles_dir/dependencies/powerlinefonts/install.sh

echo "Powerline fonts should be working now!"
