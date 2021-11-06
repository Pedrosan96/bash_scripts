#!/usr/bin/env bash

echo "Hola mundo"

echo $1   #la variable 1 es el primer argumento de entreada
echo $2   #la variable 2 es el segundo argumento de entreada
echo $#   #la variable # es el numero de argumentos de entrada
echo $@   #la variable @ despliega las entradas
[ $1 -eq $2 ]   #esta es una operacion de igualacion de las dos primeras entradas
echo $?   #la variable ? tiene si el utimo proceso fue correcto(0) o incorrecto (1)
echo $$   # la variable $ tiene el identificador del proceso del script
echo $USER  #la variable USER tiene el nombre del usuario loggeado
echo $HOSTNAME #nos dice el nombre de la maquina
echo $SECONDS   #el tiempo en segundos desde que se inicio el script
echo $RANDOM    #genera un numero aleatorio
echo $LINENO    #nos dice el numero de lineas que se han ejecutado
echo $SHELL   #nos dice la shell que se esta ejecutando
echo $EDITOR    #nos dice el editor de texto que se esta usando
echo $USERNAME    #nos dice el nobre del usuario
echo $PATH    #nos dice todo lo que esta cargado de ejecutables

 #uso de variable

variable="Hola"   #se inicializa variable
echo "$variable mundo"  #se unen variable y la palabra
echo '$variable mundo'  #en esta se imprime sin unir el valor de variable
echo `echo $variable mundo` #en esta se ejecuta lo que hay dentro de las comillas cursivas

variable=`ls -la` #se asigna a variable el comando ls -ls
echo $variable    #se manda ejecutar la variable

variable=$(ls -la)  #esta es otra forma de guardar el comando en variable
echo $variable      #se vuelve a mandara ejecutar variable

  #operaciones artimeticas

resultado=$((2+2))  #se hace la operacion y se guarda en resultado
echo $resultado     #se despliega el valor de resultado

variable="Hola mundo"   #se asigna la cadena Hola mundo a variable
echo ${variable:2:5}    #se despliegan los caracteres del 3 al 6, ya que empieza el onteo en 0
