#!/bin/bash

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
echo 'deb https://http.kali.org/kali kali-rolling main contrib non-free' >> /etc/apt/sources.list
