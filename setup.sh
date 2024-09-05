#!/bin/bash

# install dependencies
sudo apt update
sudo apt install build-essential git cmake libuv1-dev libssl-dev -y

# download latest xmrig form github
git clone https://github.com/xmrig/xmrig.git

# create build folder
cd xmrig
mkdir build
cd build

# build
cmake .. -DWITH_HWLOC=OFF
make -j10

echo "### INSTALL COMPLETE ###"