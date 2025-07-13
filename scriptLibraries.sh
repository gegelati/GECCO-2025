#!/bin/bash

cd gegelati-apps/mujoco/lib

echo "Installation of MuJoCo"
sudo bash ../scripts/dl_mujoco.sh

echo "Installation of Gegelati"
git clone https://github.com/gegelati/gegelati.git
cd gegelati 
git checkout GECCO_UPDATE
cd bin
cmake ..
sudo cmake --build . --target install -j

echo "All libraries installed"
echo "Start installation of project"

cd ../../..
mkdir bin
cd bin
cmake ..
cmake --build . -j

echo "Projet successfuly installed"