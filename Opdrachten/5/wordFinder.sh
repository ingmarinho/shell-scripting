#!/usr/bin/env bash

i=0;
for word in $(<$1)
do
    if [ "$word" == "$2" ]; then
        ((i=i+1));
    fi
done

echo "$i occurences of '$2' found";

# roep aan met ./script.sh bestanden/205-0.txt slow