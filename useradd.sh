#!/bin/bash
sudo groupadd testgroup

for username in maqj1 maqj2 maqj3 maqj4
do
	sudo useradd -G testgroup $username
	echo "password" | sudo passwd --stdin $username
done
