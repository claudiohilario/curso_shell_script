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
