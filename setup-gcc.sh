#!/bin/bash

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test

sudo apt update

sudo update-alternatives --remove-all gcc
sudo update-alternatives --remove-all g++

sudo apt-get install -y gcc-4.8 g++-4.8 gcc-4.9 g++-4.9 gcc-5 g++-5 gcc-6 g++-6 gcc-7 g++-7

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 50 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 30 --slave /usr/bin/g++ g++ /usr/bin/g++-5
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 20 --slave /usr/bin/g++ g++ /usr/bin/g++-6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 10 --slave /usr/bin/g++ g++ /usr/bin/g++-7

sudo update-alternatives --set cc /usr/bin/gcc
sudo update-alternatives --set c++ /usr/bin/g++

sudo update-alternatives --config gcc
sudo update-alternatives --config g++