#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the input mp4 file name."
  exit 1
fi

if [ ! -f "$1" ]; then
  echo "File $1 does not exist."
  exit 1
fi

ffmpeg -i "$1" -pix_fmt yuv420p -f yuv4mpegpipe output.y4m
if [ $? -ne 0 ]; then
  echo "Error converting mp4 to y4m."
  exit 1
fi

avifenc output.y4m animated.avif
if [ $? -ne 0 ]; then
  echo "Error converting y4m to avif."
  exit 1
fi

echo "Conversion successful. Result saved as animated.avif."
