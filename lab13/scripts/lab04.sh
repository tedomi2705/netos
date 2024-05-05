#!/bin/sh

is_prime() {
    number=$1
    if [ "$number" -eq 2 ] || [ "$number" -eq 3 ]; then
        echo "$number is a prime number"
        return
    fi
    if [ $((number % 2)) -eq 0 ] || [ $((number % 3)) -eq 0 ]; then
        echo "$number is a composite number"
        return
    fi
    i=5
    w=2
    while [ $((i * i)) -le "$number" ]
    do
        if [ $((number % i)) -eq 0 ]; then
            echo "$number is a composite number"
            return
        fi
        i=$((i + w))
        w=$((6 - w))
    done
    echo "$number is a prime number"
}

echo "Enter a number between 1000 and 50000:"
read number

if ! [ "$number" -eq "$number" ] 2> /dev/null || [ "$number" -lt 1000 ] || [ "$number" -gt 50000 ]; then
    echo "Error: Invalid input"
    exit 1
fi

is_prime "$number"