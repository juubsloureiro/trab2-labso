#!/bin/bash

num=5
while [ $num -ne 0 ]
do
echo "
--------------MENU---------------
1- Listar conteúdo da pasta atual
2 - Ver conteúdo de um arquvo
3 - Testar se uma url está no ar
0 - Sair

Escolha uma opcao:
" 
	read num
	case "$num" in
	1) ls . 
	;;
	2) echo "
	Digite o nome do arquivo" 
	read arq
	if [ -f "$arq" ]
	then
	cat $arq
	else
	echo "
	Arquivo inexistente!"
	fi
	;;
	3) echo "
	Digite a URL"
	read url
	ping -c 1 $url
	if [ $? -ne 0 ]
	then
	echo "
	Site fora do ar"
	else
	echo "
	Site no ar"
	fi
	;;
	0) echo "
	Saindo..."
	;;
	*) echo "
	Opcao invalida!"
	esac
done
