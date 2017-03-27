#!/bin/bash

# Update repo

sudo apt-get update
sudo apt-get upgrade

# Install unzip, ffmpeg, python

sudo apt install unzip
sudo apt install ffmpeg
sudo apt install python

# Fetch and unpack rclone

curl -O http://downloads.rclone.org/rclone-current-linux-amd64.zip
unzip rclone-current-linux-amd64.zip
cd rclone-*-linux-amd64

# Copy binary file rclone

sudo cp rclone /usr/bin/
sudo chown root:root /usr/bin/rclone
sudo chmod 755 /usr/bin/rclone

# Install manpage rclone

sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb

# Fetch and install youtube-dl

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
