#!/bin/bash

if [ -z "$1" ]; then
  echo "请提供图片路径作为参数"
  exit 1
fi

osascript -e "set the clipboard to (read (POSIX file \"$1\") as TIFF picture)"
