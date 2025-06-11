#!/bin/bash

if [ "$#" -ne 3 ];then
    echo "Uso: $0 <nome_container> <nome_db> <ficheiro_destino.sql>"
    exit 1
fi

MYSQL_CONTAINER="$1"
MYSQL_DB="$2"
FICHEIRO_DESTINO="$3"

read -p "Nome do utilizador MySQL: " UTILIZADOR
read -s -p "Palavra-passe: " PASSWORD
echo

docker exec -i "$MYSQL_CONTAINER" mysqldump -u "$UTILIZADOR" -p "$PASSWORD" "$MYSQL_DB" > "$FICHEIRO_DESTINO"