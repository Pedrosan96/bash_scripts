#!/usr/bin/env bash
#-*- coding: utf-8 -*-

distros[0]=ubuntu       #se oueden generar arrays individualmente por posiciones
distros[1]=debian
echo ${distros[0]}      #de igual manera se pueden imprimir individualmente
echo ${distros[@]}

declare -a distro=(Ubuntu Debian "Linux Mint" Red\ hat)  #Segunda manera de declarar un array
          #Se utilizan las comillas para poder usar mas de un apalabra o tambien se podria
          #agregar el espacio meciante "\ " de est manera: declare -a distro=(Ubuntu Debian Linux\ Mint)
dist=("buntu" "Mint" "debian")      #Tercera manera de declarar un array
echo ${distro[@]}               #De esta maner se llama a todas las posiciones del array
for i in "${distro[@]}"; do     #Se puede acceder a cada posicion del array mediante FORs
  echo $i
done

echo "${distro[@]:0:3}"   #De esta manera se puede acceder a las posiciones del array tambien.
echo "${#distro[@]}"      #Agregando el # se cuenta el numero de elementos
dist=(${dist[@]} Arch)
dist1=(Arch ${dist[@]})   #De esta manera se concatenan arrays
echo ${dist1[@]}

dist3=(${dist[@]} ${dist1[@]})    #cabe recalcar que si no se utiliza el [@] se
echo ${dist3[@]}                  #manda solo la primer posicion y sin comillas
                                  #nos cuenta los espacios como lugares.

dist3=("${dist3[@]::4}")          #de esta manera se eliminan elmentos de los array
echo "${dist3[@]}"                #En esta se dejaron los 3 primeros elementos
dist3=("${dist3[@]:2}")           #En esta se dejan a partir de la posicion 2
echo "${dist3[@]}"
