#!/bin/bash
distribution=$". /etc/os-release;echo $VERSION_ID"
gitdir=$"~/Bitfusion_JupyterLab"

#mkdir ~/tmp
sudo apt-get update

sudo apt install -y python3-pip
sudo pip3 install jupyterlab
ipython kernel install --prefix ~/tmp


cd ~/tmp/share/jupyter/kernels/
mv python3/ bitfusion-basic
cat ~/Bitfusion_JupyterLab/kernel.json > ./bitfusion-basic/kernel.json


jupyter kernelspec install --user tmp/share/jupyter/kernels/bitfusion-basic/

