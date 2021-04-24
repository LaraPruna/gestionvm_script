#!/bin/bash

. ./libreria.sh

if [[ $(f_eres_root;echo $?) = 1 ]]; then
	echo 'Tienes que ser root'
	exit
fi
echo 'Inicio del programa. Comprobando el estado del paquete virtualbox...'
if [[ $(f_esta_instalado virtualbox;echo $?) = 1 ]]; then
	echo 'No tienes instalado Virtualbox. ¿Quieres instalarlo? (s/n)'
	read res1
	if [[ $res1 = 's' ]]; then
		f_instalar virtualbox
	else
		echo 'Fin del programa.'
		exit
	fi
fi
cat ./menu.txt
read opcion