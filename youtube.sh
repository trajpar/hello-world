#!/bin/bash

echo "YOUTUBE-DL"

# Update youtube-dl to latest version
youtube-dl --update

# Download videos specified from URL file, merge video format to .mkv
youtube-dl --batch-file /mnt/shares/share1/video.txt --download-archive ./videocomplete.txt --ignore-errors --merge-output-format mkv --add-metadata -o '/mnt/shares/share1/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'

ffmpeg -i $INPUT -c:v libx265 -crf 21 -preset faster -pix_fmt yuv420p10le -c:a libopus -b:a 384k -sn $OUTPUT
