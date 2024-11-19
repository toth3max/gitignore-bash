#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: gitignore <language>"
    exit 1
fi

if [ -f ".gitignore" ]; then
    echo ".gitignore already exists in the current directory."
    exit 1
fi

# Convert the argument to CamelCase
language="$(echo "$1" | sed -E 's/[^a-zA-Z0-9]+/ /g' | awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1' | tr -d ' ')"

curl -s -o .gitignore https://raw.githubusercontent.com/github/gitignore/main/${language}.gitignore

if [ $? -ne 0 ]; then
    echo "Failed to download .gitignore for $language"
    exit 1
else
    echo ".gitignore for $language downloaded successfully."
fi
