#!/bin/bash

adb pull /dev/graphics/fb0 fb0
dd bs=1920 count=800 if=fb0 of=fb0b
ffmpeg -vframes 1 -vcodec rawvideo -f rawvideo -pix_fmt rgb32 -s 480x800 -i fb0b -f image2 -vcodec png fb0.png