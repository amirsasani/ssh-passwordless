#! /bin/bash

CLIENT_LOGIN=$USER
read -p "Your username on server: " SERVER_USER
read -p "Your server's IP address: " SERVER_IP
read -sp "${SERVER_USER}'s password on server: " SERVER_PASSWORD

SERVER_ADDRESS="$SERVER_USER@${SERVER_IP}"

ssh-keygen -t rsa;
ssh $SERVER_ADDRESS mkdir -p .ssh;
cat .ssh/id_rsa.pub | ssh $SERVER_ADDRESS 'cat >> .ssh/authorized_keys';
ssh $SERVER_ADDRESS "chmod 700 .ssh; chmod 640 .ssh/authorized_keys";
