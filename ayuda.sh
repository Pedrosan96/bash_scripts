#!/bin/bash
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh
#
# SPDX-License-Identifier: GPL-3.0-or-later

###Esta puede ser una forma de generar una ayuda
for arg in "$@"
do
    if [ "$arg" = '--help' ] || [ "$arg" = "-h" ]
    then
        echo "Esta es la ayuda"
    fi
done

#Ahora la segunda opción es llamar una función dependiendo si lo ejecuta mal o
#si se llama a la ayuda

function ayuda(){
    echo "Este script se usa para explicar la ayuda"
    echo 
    echo
    echo "Use ./ayuda.sh [-o1 option1][-o2 option2]"
    echo "-o2 es la opcion 2, es opcional"
    echo
}

while [[ $# -gt 0 ]]
do 
    key="$1"
    case "$key" in
        -o1|--option1)
            OPCION1="$2"
            shift
            shift
            ;;
        -o2|--option2)
            OPCION2="$2"
            shift
            shift
            ;;
        -h|--help)
            ayuda
            exit
            ;;
        *)
            echo "ERROR: Parámetro desconocido"
            ayuda
            exit 1
    esac
done

echo "Opción 1: "$OPCION1""
echo "Opción 1: "$OPCION1""


