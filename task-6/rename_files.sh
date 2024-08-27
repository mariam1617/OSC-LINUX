#!/bin/bash
read -p "Enter directory path: " path

find "$path" -type f -name "*.txt" | while read txt;
do
    
    file=$(basename "$txt" .txt)
    new_file="old_$file.txt"
    new_path="$path/$new_file"
    mv "$txt" "$new_path"
    
done
