#!/bin/bash
wget -q -O - http://nginx.org/keys/nginx_signing.key | sudo apt-key add -
echo "deb http://nginx.org/packages/$(lsb_release -is | tr '[:upper:]' '[:lower:]')/ $(lsb_release -cs) nginx" | sudo tee /etc/apt/sources.list.d/nginx.list
sudo apt-get update
sudo apt-get install nginx


