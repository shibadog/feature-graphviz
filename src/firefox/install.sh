#!/bin/bash

apt update
apt install -y libasound2 libdbus-glib-1-2 libgtk-3-0 libx11-xcb1 \
    fonts-ipafont fonts-ipaexfont
fc-cache -fv

wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-${VERSION:-latest}&os=linux64&lang=en-US"
tar -jxvf FirefoxSetup.tar.bz2 -C /opt

# Clean up
rm -rf /var/lib/apt/lists/*

echo "Done!"