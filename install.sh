#!/usr/bin/env bash

echo "Installing tools ..."
curl -sL https://downloads.rclone.org/rclone-current-linux-amd64.zip | busybox unzip - 1>/dev/null 2>&1
chmod +x rclone-*/rclone
sudo cp rclone-*/rclone /usr/local/bin/

if [ "$1" != "false" ]; then
  sudo apt update >/dev/null
  sudo apt install ffmpeg -y >/dev/null
else
  echo "Skipping ffmpeg"
fi
