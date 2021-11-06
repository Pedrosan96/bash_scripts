#!/usr/bin/env bash
#-*- coding: utf-8 -*-
variable="Alfonso"

function saludos(){
  local variable="$1"               #De no haber puesto local, se tomaría la variable
  echo "Hola amiguitos"             #de manera global, dentro y fuera de la función.
  if [ ! -z "${variable}" ]; then   #Se verifica si la variable esta vacia.
    echo "Hola ${variable}"
  fi

  echo "=============="
}

saludos                 #De esta manera se llama a la funcion, se puede llamar las veces que quieras.
saludos Pedro           #Se le envia de argumento de entrada el nombre Pedro
saludos "$1"            #Se envia de argumento de entrada el primer y segundo argumento
saludos "$2"            #que se introduce al script.
saludos "${variable}"   #Se envia como argumento de entrada a la variable global.

function suma(){
  local var=$((12+42))
  local resultado=$(("$1" + "$2"))
  echo "${var}"
  echo "${resultado}"
}

echo "El resultado es: $(suma $3 $4)"
