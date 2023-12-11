#!/bin/bash
hosts="192.168.3.101 \
       192.168.3.102 \
       192.168.3.103 \
       192.168.3.104 \
       192.168.3.105 \
       192.168.3.98 \
       192.168.3.99"

for i in $hosts
do
  sshpass -p "Shanghai2010" ssh-copy-id -o StrictHostKeyChecking=no $i
done
