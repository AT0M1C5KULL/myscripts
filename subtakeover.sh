#!/bin/bash
for palavra in $(cat subdomains-100.txt);do
host -t cname $palavra.$1 | grep "alias for"
done
