#!/bin/sh

fibonacci() {
    a=0
    b=1
    while [ "$b" -lt "$1" ]
    do
        echo $b
        temp=$b
        b=$((a + b))
        a=$temp
    done
}

echo "Enter a number between 1000 and 5000:"
read number

if ! [ "$number" -eq "$number" ] 2> /dev/null || [ "$number" -lt 1000 ] || [ "$number" -gt 5000 ]; then
    echo "Error: Invalid input"
    exit 1
fi

fibonacci "$number" | tail -n 1