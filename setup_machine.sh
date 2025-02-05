#!/bin/bash

sudo apt install -y apt-utils wget curl
cd zombie-lord
sudo ./audio.deps
sudo ./deb.deps
sudo ./font.deps
sudo ./dlchrome.sh
cd ..
sudo npm i -g node-dev
sudo apt install -y libvips libjpeg-dev
./install_bundle_deps.sh
./global_install_bundle_deps.sh
sudo groupadd browsers
echo "(if you're not on a linux system don't worry about this step)"
echo "You need to edit sudoers file with visudo to add"
echo "ALL ALL=(:browsers) NOPASSWD:ALL"
read -p "Press enter to continue to visudo "
sudo visudo

