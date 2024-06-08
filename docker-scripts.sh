#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install sudo -y
apt-get install wget -y
sudo wget -qO /usr/bin/yt-dlp https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
sudo chmod a+rx /usr/bin/yt-dlp
sudo yt-dlp -U
apt-get install python3 -y
apt-get install -y --no-install-recommends git python3-pip python3-venv curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt-get install -y nodejs software-properties-common
python3 -m pip install --force-reinstall https://github.com/yt-dlp/yt-dlp/archive/master.tar.gz
rm -rf /var/lib/apt/lists/*
