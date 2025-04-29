#!/bin/bash

# ficheiro que verifica a existencia de um ficheiro e faz o backup dele
#DATAHORA=$(date +"%d/%m/%Y-%H:%M:%S")

if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Need to provide the output file name"
    exit 1
else
    cp "$1" "$2"
fi

echo "Backup od $1 created as $2"

