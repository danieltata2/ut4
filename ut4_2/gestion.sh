#!/bin/bash

export GDK_BACKEND=X11
nombre_proceso=$1

echo "El nombre del proceso es: $nombre_proceso"
	
pidof $nombre_proceso

if [[ $? == 0 ]];then
#El 0 es porque el programa fue iniciado
	pkill -f $nombre_proceso	
else
#Si es 1 no fue iniciado
	$nombre_proceso	 &

fi



