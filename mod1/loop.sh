#!/usr/bin/env bash
echo ":::::: For 1 ::::::"
for (( i = 0; i < 10; i++ )); do # Começa em 0 termina em 9
  echo $i
done

echo ":::::: For 2 (seq) ::::::"
for i in $(seq 10) # Começa em 1 termina em 10
 do
  echo $i
done

echo ":::::: For 3 (array) ::::::"
Objetos=(
'Lapis',
'Caneta'
'Folhas'
)
for i in "${Objetos[@]}"; do # @ indica todos os itens desse array. "" para manter a formatação das strings do array
  echo "$i"
done

echo ":::::: While ::::::"
contador=0;
while [[ $contador -lt ${#Objetos[@]} ]]; do # -lt significa menor. # antes mostra o tamanho do array
  echo $contador;
  contador=$(($contador+1))
done
