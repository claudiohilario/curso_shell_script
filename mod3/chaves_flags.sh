#!/usr/bin/env bash
#
# listaUtilizadores.sh - Obtém utilizadores de /etc/passwd
#
# Site:        http://example.com
# Author:      Cláudio Hilário
# Maintenance: Cláudio Hilário
#
# ------------------------------------------------------------------------ #
#  Irá obter utilizadores de /etc/passwd, com a possibilidade de colocar em
# maiúsculo e em ordem alfabética.
#
#  Examples:
#      $ ./listaUtilizadores.sh -s -m
#      Neste exemplo, fica em maiúsculo e em ordem alfabética.
# ------------------------------------------------------------------------ #
# Changelog:
#
#   v1.0.0 02/11/2018, Cláudio:
#       -
# ------------------------------------------------------------------------ #
# Tested in:
#   GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin18)
# ------------------------------------------------------------------------ #

# ------------------------------- VARIABLES ------------------------------ #
UTILIZADORES="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename  $0) - [OPÇÕES]

    -h - Menu de Ajuda
    -v - Versão
    -s - Ordenar a saída
    -m - Coloca em maiúsculo
"
VERSAO="v1.0.0"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUTION ------------------------------ #

while test -n "$1" 
do
  case "$1" in
    -h) echo "$MENSAGEM_USO" && exit 0  ;;
    -v) echo "$VERSAO" && exit 0        ;;
    -s) CHAVE_ORDENA=1                  ;;
    -m) CHAVE_MAIUSCULO=1               ;;
    *) echo "Opção Inválida" && exit 1  ;;
  esac
  shift
done

[ $CHAVE_ORDENA -eq 1 ] && UTILIZADORES=$(echo "$UTILIZADORES" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && UTILIZADORES=$(echo "$UTILIZADORES" | tr [a-z] [A-Z])

echo "$UTILIZADORES"
# ------------------------------------------------------------------------ #
