#!/bin/bash
export GDK_BACKEND=x11
export DISPLAY=:0
clear
exec -a menuPIDS yad --title="MENU" \
	--form \
	--no-buttons \
	--columns="1" \
	--text="Elige una opción: " \
    --field="ABRIR/CERRAR CALCULADORA 🔢":fbtn "bash gestion.sh gnome-calculator" \
    --field="ABRIR/CERRAR MINAS":fbtn 'bash gestion.sh gnome-mines' \
    --field="SALIR":fbtn "bash salir.sh" \ 
    --heigth=200 --width=400 \
