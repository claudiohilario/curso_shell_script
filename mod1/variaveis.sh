#!/usr/bin/env bash

NOME="Claudio
Hilario"
echo "$NOME"; # Ao utilizar as ", mantêm a formatação da string.

NUMERO_1=10
NUMERO_2=15
TOTAL=$((NUMERO_1 + NUMERO_2)); # Para fazer um cálculo é necessário seguir,
#o seguinte padrão: $(([calculo]))

echo "$TOTAL"; #25
# Para garantir que não ocorre nenhum problema na formatação, usar as ".

SAIDA_CAT="$(cat /etc/password | grep claudiohilario)"

echo $SAIDA_CAT;

echo "-------------------------------------------------";

echo "Parâmetro 1: $1"
echo "Parâmetro 2: $2"
# Digitando ./variaveis.sh -a -b, $1 = -a e $2 = -b

echo "Todos os parâmetros $*"
#Digitando ./variaveis.sh -a -b -c, $* = -a -b -c

echo "Quantos parâmetros? $#" #mostra o numero de parâmetros enviados.

echo "Saída do último comando $?" # Por Default: 0- Está tudo OK 1- Ocorreu um problema.

echo "PID: $$"

echo $0 #nome do script
