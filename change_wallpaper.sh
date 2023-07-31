#!/usr/bin/bash

# Path to wallpaper folder
wallpaper_folder="/home/alex/Documents/dev/OtherProjects/wallpaperModifier/wallpapers"

# Get all wallpapers from the folder
wallpapers=("${wallpaper_folder}"/*)

# If the folder is empty then fail
if [ ${#wallpapers[@]} -eq 0 ]; then
  echo "Wallpaper folder is empty or does not exist."
  exit 1
fi

# Use the $RANDOM to get a random picture from the folder
selected_wallpaper="${wallpapers[$RANDOM % ${#wallpapers[@]}]}"

# Use gsettings to change the wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://${selected_wallpaper}"