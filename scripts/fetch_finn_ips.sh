#!/bin/bash

ip_folder=$1
cd $ip_folder

wget https://nextcloud.sdu.dk/index.php/s/3xt6wTLyEqn7LJj/download/src_ips.zip
unzip src_ips.zip
rm src_ips.zip
