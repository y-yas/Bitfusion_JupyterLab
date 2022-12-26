#!/bin/bash
#distribution=$". /etc/os-release;echo $VERSION_ID"
#gitdir=$"~/Bitfusion_JupyterLab"

sudo apt-get update

sudo apt install -y python3-pip
sudo pip3 install jupyterlab
ipython kernel install --prefix ~/tmp


mv ~/tmp/share/jupyter/kernels/python3/ ~/tmp/share/jupyter/kernels/bitfusion-basic
cat ./kernel.json > ~/tmp/share/jupyter/kernels/bitfusion-basic/kernel.json


jupyter kernelspec install --user ~/tmp/share/jupyter/kernels/bitfusion-basic/

