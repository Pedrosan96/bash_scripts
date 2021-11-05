#!/usr/bin/env bash
#-*- coding: utf-8 -*-

i=0                         #se define la variable para contar
while [ $i -lt 10 ]; do     # se declara el while -lt=(less than) 10
  echo "Hola mundo"
  ((i++))                   #se incrementa la variable i
done

i=0
until [ $i -gt 10 ]; do     #inicio del bucle until
  echo "Que onda"
  ((i++))
done
i=0
for i in {1..10}; do        #primera forma dul bucle FOR
  if [ $i -lt 10 ]; then
    echo "Bucle for"
    continue
  else
    break
  fi
done

for (( i = 0; i < 10; i++ )); do  #Segunda forma con expresiones
  echo "Otro ciclo FOR"
done

for i in 1 2 3 4; do         #tercera forma
  echo $i
done

for i in $(ls); do            #Forma en que toma valores de una variable o
  echo $i                     #resultado de una instruccion como es el caso.
done

for i in {1..10..-2}; do
  echo $i
done

for i in hola mundo molon; do #Este imprime palabra por palabra
  echo $i
done
