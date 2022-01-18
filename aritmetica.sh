#!/usr/bin/env bash


let z=(25+12*45) # let te permite realizar operaciones matematicas
((z=z*5))	#de igual manera que realizarlas dentro de doble parentesis
echo $z
let z++; echo $z

f=$((z*55))
echo $f

time echo $((43*76/32))	#Se utiliza el comando time para desplegar el tiempo 
			#en ejecutarse hasta ese punto

echo "12*32" | bc	#se realizan las operaciones enviandolas a la linea de 
			#comandos de BC(Basic Calculator)
			#Cabe resaltar que de esta manera es mucho mas rapido

echo "s(3.141593)+c(3.141593)" | bc -l	#Ahora se realizan operaciones
				#trigonometricas (c-> coseno y s-> seno)
				#mediante la libreria matematica "-l"
