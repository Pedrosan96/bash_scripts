#!/usr/bin/env bash
#-*- coding: utf-8 -*-

if [ "$1" = "Hola" ]; then  #se crea la condicional de comparar la primer entrada con Hola
  echo "$1 mundo"
elif [ "$1" = "Mundo" ]; then #segunda comparacion
  echo "Hola"
elif [ ! -z "$1" ]; then      #tercera comparacion ve si $1 esta vacio con -z y lo niega con !
  if [ "$1" = "cosa" ]; then  #en otras palabras si se ingresa algo incorrecto despliega el mensaje.
    echo "cosa no cuenta"     #aqui ya esta la segunda condicional anidada
  else
    echo "Esta variableno vale"
  fi
else
  echo "No me has pasado ninguna variable"  #opcion default
fi                           #se finaliza el if

if [ -d "hola" ]; then  #esta comparacion revisa si existe un directorio hola en la misma direccion.
  echo "Existe!!"       #si se usara -f es para archivo, -r para saber si tiene permisos de lectura
else                    #si se pone -x es para permisos de ejecucion, etc.
  echo "No existe :("
fi

if [[ "$2" =~ h.* ]]; then  #el doble parentesis permite el uso de espresiones
  echo "Cumple"             #regulares como h.* que busca archivos que empiecen con h
else
  echo "No cumple"
fi

if [ "$3" -eq 0 ] || [ $3 -gt 1 ]; then #-eq se usa para comparar igualdad de numeros, -gt para
  echo "Es cero"        #comparar si es mayor que, -lt si es menor, -ge mayor o igual, etc.
fi                      #Por otra parte || denota la compuerta OR y && denotaria la AND.


case $4 in            #se crea un case que compara la entrada $4
  amarillo)
    echo "platano"
    ;;
  verde)
    echo "limon"
    ;;
  *)                  #esta es la opcion default
    echo "No vale"
    ;;
esac
