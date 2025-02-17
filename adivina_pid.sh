#!/bin/bash
pid_script=$$
intentos=0
echo "Has entrado al script: $pid_script"
read -n1 -p "Pulsa una tecla para continuar ....."

#-eq es igual
#-lt menor que
#-gt mayor que

while [[ true ]];do
	read -p "Indica el PID (Intentos: $intentos): " user_pid
	
	if [[ $intentos -eq 10 ]];then
	echo "El numero de intentos se ha agotado"
		break
	fi
	if [[ $user_pid -eq $pid_script ]];then
		echo "El $user_pid es el mismo que el $pid_script"
		break
	elif [[ $user_pid -lt $pid_script ]];then
		echo "El $user_pid es menor que el $pid_script, vuelve a intentarlo"
		((intentos++))
	elif [[ $user_pid -gt $pid_script ]];then
		echo "El $user_pid es mayor que el $pid_script, vuelve a intentarlo"
		((intentos++))
	fi
done

