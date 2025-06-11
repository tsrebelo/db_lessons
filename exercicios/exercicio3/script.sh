#!/bin/bash

if [ "#$" -ne 2 ];then
    echo "Uso: $0 <nome_db> <nome_tabela>"
    exit 1
fi

nome_db="$1"
nome_tabela="$2"

sqlFile = "criarDB_TB.sql"

echo "CREATE DATABASE IF NOT EXISTS '$nome_db';" > $sqlFile
echo "CREATE TABLE '$nome_tabela';" >> $sqlFile