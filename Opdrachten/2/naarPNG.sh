#!/usr/bin/env bash
for Afbeelding in $1*.jpg; do 
    convert "$Afbeelding" -resize 128x128\> "${Afbeelding%.*}.png";
done

# roep aan met: ./naarPNG.sh Afbeeldingen/