#!/usr/bin/env bash

source ~/.bashrc
echo '' > /etc/network/interfaces
echo 'auto lo' >> /etc/network/interfaces
echo 'iface lo inet loopback' >> /etc/network/interfaces
echo 'auto wlan0' >> /etc/network/interfaces
echo 'iface wlan0 inet dhcp' >> /etc/network/interfaces
echo "wpa-ssid $WIFI_NETWORK" >> /etc/network/interfaces
echo "wpa-psk $WIFI_NETWORK_PASS" >> /etc/network/interfaces

ifdown wlan0 && ifup wlan0 && apt-get update && apt-get -y upgrade && apt-get -y install git && apt-get -y install vim 
