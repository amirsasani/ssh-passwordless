#! /bin/bash

read -p "Your username on server: " SERVER_USER
read -p "Your server's IP address: " SERVER_IP

SERVER_ADDRESS="${SERVER_USER}@${SERVER_IP}"

if [[ ! -f ~/.ssh/id_rsa.pub ]]
then
    ssh-keygen -t rsa;
fi

ssh-copy-id $SERVER_ADDRESS
