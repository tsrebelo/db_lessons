#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo "Uso: $0 <acao> <nome_container> [imagem]"
  exit 1
fi

ACAO=$1
NOME_CONTAINER=$2
IMAGEM=$3

ACAO_INVALIDA(){
  echo "Ação inválida: $ACAO"
  echo "Ações válidas: criar, iniciar, parar, apagar, estado"
  exit 1
}

case $ACAO in
  criar)
    docker run -d --name "$NOME_CONTAINER" -p 3307:3306 "$IMAGEM"
    ;;

  iniciar)
    docker start "$NOME_CONTAINER"
    ;;

  parar)
    docker stop "$NOME_CONTAINER"
    ;;

  apagar)
    docker rm "$NOME_CONTAINER"
    ;;

  estado)
    docker ps -a | grep "$NOME_CONTAINER"
    ;;

  *)
    ACAO_INVALIDA
    ;;
esac