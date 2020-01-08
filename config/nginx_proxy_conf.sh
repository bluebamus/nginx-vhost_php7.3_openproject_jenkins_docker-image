#!/bin/bash

account=$1
domain=$2
portnumber='80'
realurl='http:\/\/openproject:8080'

sed 's/realurl;/'$realurl';/' sample_nginx_proxy.conf > $account'1'.temp
sed 's/portnumber;/'$portnumber';/' $account'1'.temp > $account'2'.temp
sed 's/domain/'$domain'/g' $account'2'.temp > ./conf.d/$account'_proxy_ng'.conf 

rm *.temp