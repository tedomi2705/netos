#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: Expected 2 arguments"
    exit 1
fi

filepath=$1
line_number=$2

if [ ! -f "$filepath" ]; then
    echo "Error: File does not exist"
    exit 1
fi

total_lines=$(echo "$(cat "$filepath")" | wc -l)
echo "Total lines: $total_lines"
if [ "$total_lines" -lt "$line_number" ]; then
    echo "Error: File has less than $line_number lines"
    exit 1
fi

sed "${line_number}q;d" "$filepath" 
