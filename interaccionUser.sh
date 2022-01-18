#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# SPDX-License-Identifier: GPL-3.0-or-later

echo "Dime tu nimbre: "     #S]e pregunta por el nombre
read Nombre                 #De esta forma se guarda en la variable Nombre
echo "Hola ${Nombre}"       #De esta forma se imprime
read -t 4 -p "Dime tu apellido: " Apellido #Segunda forma en la que se pregunta
    #y se almacena en una sola linea. Ademas se da un tiempo de 4 segundos 
    #para responder con "-t 4".

if [ -z "${Apellido}" ]; then
    echo "Por que no me quieres decir tu apellido ${Nombre}?"
else
    echo "Mucho gusto ${Nombre} ${Apellido}"    
fi
    
