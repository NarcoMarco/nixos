#!/bin/sh

# Image directory
IMAGE_DIR="/home/marco/git-repos/mine/nixos/home/config/fastfetch/miku"

# Find a random image file
RANDOM_IMAGE=$(find "$IMAGE_DIR" -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.webp" \) | shuf -n 1)

# Display the image using catimg (ensure you have catimg installed)
if [ -n "$RANDOM_IMAGE" ]; then
    catimg -H 40 "$RANDOM_IMAGE"
else
    echo "No image found in $IMAGE_DIR" >&2
    exit 1
fi
