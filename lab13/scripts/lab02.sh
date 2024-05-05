#!/bin/sh

if [ $# -ne 3 ]; then
    echo "Error: Expected 3 arguments"
    exit 1
fi

A=$1
B=$2
o=$3

if [ "$o" = 'x' ]; then
    o='*'
fi

if [ "$o" = '**' ]; then
    o='^'
fi

if ! [ "$o" = '+' -o "$o" = '-' -o "$o" = '*' -o "$o" = '/' -o "$o" = '%' -o "$o" = '^' ]; then
    echo "Error: Invalid operator"
    exit 1
fi


if [ "$o" = '/' -a "$B" -eq 0 ]; then
    echo "Error: Division by zero"
    exit 1
fi

S=$(echo "$A $o $B" | bc)
echo "$A $o $B = $S"