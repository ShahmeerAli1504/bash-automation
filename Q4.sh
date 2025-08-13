#!/bin/bash
Trash_name=" "
Trash_name="trash"

mkdir -p "$Trash_name"

if [ -w "$Trash_name" ]; then
 if [ -e "$1" ]; then
        mv "$1" "$Trash_name/"
        echo "$1 trashed to $Trash_name"
        echo " $1 is no longer present in the current directory"
    else
            echo "Entered filename not found."
    fi

else
    echo "Error."
fi