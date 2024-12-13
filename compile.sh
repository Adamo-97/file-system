#!/bin/bash

FILE="file_system"

if [ -f "$FILE" ]; then
    rm "$FILE"
    echo "$FILE deleted."
else
    echo "$FILE does not exist."
fi

if g++ main.cpp shell.cpp fs.cpp disk.cpp -o file_system; then
    echo "Compilation successful. Output: $FILE"
else
    echo "Compilation failed."
    exit 1
fi

