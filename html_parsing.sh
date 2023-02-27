#!/bin/bash


echo "Digite o nome do site onde será realizado o html parsing:"
read site
echo "Realizando o html parsing" 
wget -q $site -O arquivo
grep href arquivo | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" >> lista
echo ""
echo ""
echo "Deseja resolver hosts encontrados?"
read resposta
if [ "$resposta" == "sim" ]
then
	for url in $(cat lista); do host $url | grep "has address"; done
else
	cat lista
fi
rm arquivo
