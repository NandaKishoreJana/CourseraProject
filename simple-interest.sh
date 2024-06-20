#!/bin/bash
# Script to calculate simple interest

if [ $# -ne 3 ]; then
    echo "Usage: $0 principal rate time"
    exit 1
fi

principal=$1
rate=$2
time=$3

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "The simple interest is: $interest"
