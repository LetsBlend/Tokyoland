#!/bin/bash
# Paste file paths from clipboard and copy them into current dir

dest="$1"
while IFS= read -r path; do
    cp -r "$path" "$dest"
done < <(wl-paste)
