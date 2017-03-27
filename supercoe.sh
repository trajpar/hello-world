#!/bin/bash

echo "YOUTUBE-DL"

# Update youtube-dl to latest version
youtube-dl --update

# Download playlist from supercoe
youtube-dl https://www.youtube.com/user/supercoe --playlist-reverse --download-archive ./videocomplete.txt --ignore-errors --merge-output-format mkv --add-metadata -o '/home/sammy/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'
