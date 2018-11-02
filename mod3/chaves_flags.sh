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
  $0 - [OPÇÕES]

  -h - Menu de Ajuda
  -v - Versão
  -s - Ordenar a saída
"
VERSAO="v1.0.0"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTS ---------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNCTIONS ------------------------------ #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUTION ------------------------------ #
if [[ "$1" = "-h" ]]; then
  echo "$MENSAGEM_USO" && exit 0
fi
if [[ "$1" = "-v" ]]; then
  echo "$VERSAO" && exit 0
fi
if [[ "$1" = "-s" ]]; then
  echo "$UTILIZADORES" | sort && exit 0
fi
echo "$UTILIZADORES"
# ------------------------------------------------------------------------ #
