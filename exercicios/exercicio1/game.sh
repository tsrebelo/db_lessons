#!/bin/bash

clear
read -s -p "Introduzir o nome: " NOME_AMIGO
clear
while [[ "$NOME_AMIGO" != "$TENTATIVA" ]] do
read -p "Tentativa: " TENTATIVA
done
echo Correto!