#!/bin/bash

# Get volume
vol_raw=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ 2>/dev/null)
[ $? -ne 0 ] && exit

if echo "$vol_raw" | grep -q MUTED; then
  echo '{ "text": " 0%", "class": "muted" }'
else
  vol=$(echo "$vol_raw" | awk '{printf "%d", $2 * 100}')
  echo "{ \"text\": \" ${vol}%\", \"class\": \"unmuted\" }"
fi


