#!/bin/bash

echo "Executando port knocking ..."
hping3 --syn -c 1 -p 13 37.59.174.235 2>/dev/null
hping3 --syn -c 1 -p 37 37.59.174.235 2>/dev/null
hping3 --syn -c 1 -p 30000 37.59.174.235 2>/dev/null
hping3 --syn -c 1 -p 3000 37.59.174.235 2>/dev/null

echo "Abra-te cesamo ..."
curl 37.59.174.235:1337
