#!/usr/bin/env bash

VAR1=""
VAR2=""

# 1ª forma
if [[ "$VAR1" = "$VAR2" ]]; then
  echo "São Iguais";
fi

#2ª forma
if [[ "$VAR1" = "$VAR2" ]]
then
  echo "São Iguais";
fi

#3ª forma
if test "$VAR1" = "$VAR2"; then
  echo "São Iguais";
fi

#4ª forma
if test "$VAR1" = "$VAR2"
then
  echo "São Iguais";
fi

#5ª forma
if [ "$VAR1" = "$VAR2" ]; then
  echo "São Iguais";
fi

#6ª forma
if [ "$VAR1" = "$VAR2" ]
then
  echo "São Iguais";
fi

# Forma Reduzida:
[ "$VAR1" = "$VAR2" ] && echo "São Iguais";
[ "$VAR1" = "$VAR2" ] || echo "São Diferentes";
