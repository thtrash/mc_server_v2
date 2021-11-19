#!/bin/bash

sudo apt install gnupg curl dirmngr nano unzip -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java17-installer -y
sudo apt install screen -y
sudo adduser --disabled-login minecraft
sudo su minecraft
cd
wget https://download.getbukkit.org/spigot/spigot-1.17.1.jar
touch start.sh
echo "screen -AmdS minecraft java -Xms6144M -Xmx6144M -jar /home/minecraft/spigot-1.17.1.jar nogui" > start.sh
touch stop.sh
echo "screen -r minecraft -X quit" > stop.sh
echo "eula = true" > eula.txt
