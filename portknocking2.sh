#!/bin/bash

echo "Executando port knocking ..."
for device in $(seq 2 254);
do hping3 --syn -c 1 -p 13 172.16.1.$device 2>/dev/null && \
hping3 --syn -c 1 -p 37 172.16.1.$device 2>/dev/null && \
hping3 --syn -c 1 -p 30000 172.16.1.$device 2>/dev/null && \
hping3 --syn -c 1 -p 3000 172.16.1.$device 2>/dev/null && \
curl 172.16.1.$device\:1337; done 


