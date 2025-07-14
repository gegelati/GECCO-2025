#!/bin/bash

cd gegelati-apps/mujoco/lib || exit

echo "Installation of MuJoCo"
sudo bash ../scripts/dl_mujoco.sh

echo "Installation of Gegelati"
git clone https://github.com/gegelati/gegelati.git
cd gegelati || exit
git checkout GECCO_UPDATE
cd bin || exit
cmake ..
sudo cmake --build . --target install -j

echo "All libraries installed"