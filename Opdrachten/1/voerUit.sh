#!/usr/bin/env bash
case "$1" in
        *.py)
            python3 $1 ;;
        *.sh)
            bash $1 ;;
        *.cc)
            cat $1 ;;
        *)
            echo $"Bestand moet eindigen met .py/.sh/.cc"
            exit 1
esac

# roep aan met: ./voerUit bestanden/(e.g. life.py)