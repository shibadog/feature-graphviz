#!/bin/bash

wget https://dl.google.com/linux/linux_signing_key.pub
apt-key add linux_signing_key.pub
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' \
    | tee /etc/apt/sources.list.d/google-chrome.list
apt-get update
apt -f install -y
apt-get install -y google-chrome-stable libx11-dev libgtk-3-0
