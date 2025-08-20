#!/bin/bash

# Your input text
text=$(hyprctl devices)

# Use grep with -oP to find all instances of "Keyboard at" followed by a string, and then remove newlines
keyboards=$(echo "$text" | awk '/Keyboard at/ {getline; print}')

# Loop through each keyboard and process it
for keyboard in $keyboards; do
	hyprctl switchxkblayout $keyboard next
done


kb=$(
hyprctl devices -j |
  jq -r '.keyboards[] | .active_keymap' |
  head -n1 |
  cut -c1-2 |
  tr 'a-z' 'A-Z'
)
# echo $kb
notify-send "Keyboard Layout" "Switched Keyboard Layout to "$kb -a "System"
