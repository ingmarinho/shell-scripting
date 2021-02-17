#!/usr/bin/env bash

if [ ! -d "./Afbeeldingen" ] 
then
    mkdir ./Afbeeldingen;
    echo "'./Afbeeldingen' has been created!";
else
    echo "Folder already exists!";
fi

for Afbeelding in $1*.jpg $1*.png; do 
    sudo mv "$Afbeelding" ./Afbeeldingen;
done

# roep aan met: sudo ./sorteerAfbeeldingen.sh bestanden/