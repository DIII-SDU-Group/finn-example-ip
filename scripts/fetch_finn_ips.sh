#!/bin/bash

ip_folder=$1
cd $ip_folder

wget https://nextcloud.sdu.dk/index.php/s/HJCYA6GJNgRAQK8/download/src_ips.zip
unzip src_ips.zip
rm src_ips.zip

python3 src_ips/make_pseudo_ip.py
