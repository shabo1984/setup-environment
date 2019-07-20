#!/bin/bash

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test

sudo apt update

sudo update-alternatives --remove-all gcc
sudo update-alternatives --remove-all g++

sudo apt-get install -y gcc-5 g++-5 gcc-6 g++-6 gcc-7 g++-7

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 30
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 20
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 10

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 30
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 20
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 10

sudo update-alternatives --config gcc
sudo update-alternatives --config g++

sudo apt-get install gcc-multilib
