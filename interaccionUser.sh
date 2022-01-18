#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# SPDX-License-Identifier: GPL-3.0-or-later

echo "Dime tu nombre: "     #Se pregunta por el nombre
read -n 12 -d " " Nombre    #De esta forma se guarda en la variable Nombre y se
                           #restringe una longitud de 12 caracteres con "-n 12" 
                          #y un delimitador que termine al encontrar un espacio 
                          #con: -d " "
echo "Hola ${Nombre}"       #De esta forma se imprime
read -t 6 -p "Dime tu apellido: " Apellido #Segunda forma en la que se pregunta
    #y se almacena en una sola linea. Ademas se da un tiempo de 6 segundos 
    #para responder con "-t 6".
echo                #Este "echo" lo usamos para dejar un salto de linea

if [ -z "${Apellido}" ]; then
    echo "Por que no me quieres decir tu apellido ${Nombre}?"
    Apellido=${Apellido:=Lopez}
    echo "Tu apellido ahora es ${Apellido}"

else
    echo "Mucho gusto ${Nombre} ${Apellido}"    
fi
    
read -sp "Agrega una contraseña: " Password #Mediante "-sp" el texto introducido 
echo                                    #al escribir no se despliega
if [ -z ${Password} ]; then
    echo "Por que no me quieres decir tu contraseña ${Nombre}?"
else
    echo "Contraseña guardada correctamente :)"
fi
