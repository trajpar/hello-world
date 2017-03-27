#!/bin/bash

echo "YOUTUBE-DL"

# Update youtube-dl to latest version
youtube-dl --update

# Download videos specified from URL file, merge video format to .mkv
youtube-dl --batch-file /mnt/shares/share1/video.txt --download-archive ./videocomplete.txt --ignore-errors --merge-output-format mkv --add-metadata -o '/mnt/shares/share1/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'
