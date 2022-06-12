#!/bin/bash

wget https://www.arnewsline.org/s/Report2328.mp3
ffmpeg -i Report2328.mp3 -ar 8000 -ac 1 -f s16le -acodec pcm_s16le - | ~/m17-cxx-demod/build/apps/m17-mod -b -S M17 > Report2328.bin
