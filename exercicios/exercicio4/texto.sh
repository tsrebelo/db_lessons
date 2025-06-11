#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <texto>"
    exit 1
fi

TEXT="$1"

echo $TEXT > texto.txt