#!/bin/bash

sudo dpkg -i deb-multilib-u1604.4-64/*.deb
sudo apt-get -y -f install

tar -zxvf CIS_SDK_Linux32_2015_02.tar.gz -C /tmp
sudo cp -a /tmp/CIS_SDK_Linux32_2015_02/SOs/*.so /usr/lib/i386-linux-gnu
sudo cp -a /tmp/CIS_SDK_Linux32_2015_02/Demo/CIS_SDK_Lazarus /usr/local/bin/cis_sdk_lazarus
ldconfig &>>/dev/null

echo "Para iniciar o programa (GUI), abra o Terminal e execute: cis_sdk_lazarus" 

