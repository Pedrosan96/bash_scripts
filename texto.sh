#!/usr/bin/env bash

vacia=""
llena="completa"

echo "${nodefinida=defecto}"      #las variables no definidas, se pueden definir con "=",
echo "${vacia=defecto}"           #a diferencia de las definidas pero vacias y
echo "${llena=defecto}"           #las ya definidas y con un  valor.
echo "================"       #El comportamiento seria igual con "-" en vez de "=".
                              #caso contrario a lo que haria "+", que cambiaría la vacia
                              #pero no de nodefinida.
echo "${nodefinida:=defecto}"     #Usando ":=" si se pueden cambiar menos la que ya tiene valor.
echo "${vacia:=defecto}"       #El comportamiento seria igual con ":-".
echo "${llena:=defecto}"      #En el caso de ":+" solo cambiaria la variable definida y con valor.
echo "================"

#ejemplo
arg1="$1"               #Se asigna el argumento de entrada 1 a una variable para poder modificarlo.
arg1="${arg1:=Pedro}"   #Si este esta vacio se le asigna "Pedro", en caso contrario no lo haria.

echo "Hola ${arg1^^}"   #Se imprime y se cambia todo a mayusculas con "^^", en caso de
                        #usar solo una "^" se cambiaria solo la primera letra.
echo "Hola ${arg1,,}"   #Se imprime y se cambia todo a minusculas con ",,", en caso de
                        #usar solo una "," se cambiaria solo la primera letra.
#Subcadenas
#     123456789012345678901234567
var="Esto es una cadena de texto"
echo "${var}"
echo "${var:0:6}"   #imprime 6 caracters contando desde la posicion 0.
echo "${var:(-8):2}"   #imprime 2 caracters contando 8 desde la posición ultima hacias atras.

var1="uno;dos;tres"
echo "${var1%%;*}"    #extrae los primeros caracteres hasta el primer ";"
echo "${var1%;*}"    #extrae los primeros caracteres hasta el ultimo ";"

echo "${var1##*;}"    #extrae los caracteres a partir del ultimo ";"
echo "${var1#*;}"    #extrae los caracteres a partir del primer ";"

    #en caso de querer los de en medio (dos), se extraen los primeros o ultimos
    #junto con estos caracteres y entonces se recortan los primeros o ultimos respectivamente.

echo "${var/uno/onu}" #esto remplaza los primeros caracteres "uno" por "onu".
                      #en caso de querer remplazar todos los "uno", se pone
                      #"//" por primer "/".
echo $var | sed 's/uno/onu/g'   #esta funcion externa hace lo mismo pero en el doble de tiempo.
