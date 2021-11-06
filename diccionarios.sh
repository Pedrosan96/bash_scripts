#!/usr/bin/env bash
#-*- coding: utf-8 -*-

declare -a vector             #Esta es una forma de crear arrays
vector=('uno' 'dos' 'tres')
echo ${vector[@]}             #así se imprimen los valore del array
echo ${#vector[@]}            #asi se imprimer la cantidad de valores en el array
echo ${!vector[@]}            #asi se imprimen cada indice dentro del array

declare -A diccionario        #asi se declaran los diccionario y a continuacion
diccionario[uno]='1'          #se muestran las diferentes formas de rellenarlo
diccionario[dos]='2'
diccionario[tres]='3'
diccionario[cuatro]='4'
diccionario[cinco]='5'
diccionario[seis]=6
diccionario[siete y pico]=7
diccionario+=([ocho]=8 [nueve]=9)

echo ${diccionario[@]}
echo ${#diccionario[@]}
echo ${!diccionario[@]}

for elemento in "${diccionario[@]}"; do     
  echo "${elemento}"
done

for elemento in "${!diccionario[@]}"; do
  echo "${elemento}"
done

for clave in "${!diccionario[@]}"; do       #Si las comillas no fueran agregadas,
  valor="${diccionario[$clave]}"            #la clave no cambiaría pero no se accedería al valor.
  echo "El valor ${valor} del diccionario tiene la clave ${clave}"
done

unset diccionario[dos]    #unset elimina el valor indicado en el diccionario
unset diccionario         #si no se indica el valor, se alimina todo.
