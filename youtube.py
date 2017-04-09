#!/usr/bin/env python
# coding: utf-8

from __future__ import unicode_literals
import youtube_dl

ydl_opts = {
    'playlistreverse':'True',
    'outtmpl': '/home/steve/Videos/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s',
    'download_archive': '/home/steve/Documents/sweet.txt',
    'postprocessors': [{
        'key': 'FFmpegVideoConvertor',
        'preferedformat': 'mkv',
    }]
    }
with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download(['https://www.youtube.com/user/supercoe'])

with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download(['https://www.youtube.com/watch?v=7scul6vH4c4'])