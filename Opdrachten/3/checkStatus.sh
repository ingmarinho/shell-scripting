#!/usr/bin/env bash
for bestand in $1*; do
    if $2 $bestand > /dev/null; then
        echo "Uitvoeren van $bestand met $2 is Gelukt!" >> "$3";
    else
        echo "Uitvoeren van $bestand met $2 is mislukt!" >> "$3";
    fi
done

# roep aan met: ./checkStatus.sh bestanden/ cat log.txt