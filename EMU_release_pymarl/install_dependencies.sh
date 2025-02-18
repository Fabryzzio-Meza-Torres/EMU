#!/bin/bash
# Install PyTorch and Python Packages

# conda create -n pymarl python=3.8 -y
# conda activate pymarl

conda install pytorch==1.12.1 torchvision==0.13.1 torchaudio==0.12.1 cudatoolkit=11.3 -c pytorch -y
conda install anaconda::scikit-learn
conda install anaconda::py-boost
pip install protobuf==3.19.5 sacred==0.7.5 numpy scipy gym==0.11 matplotlib seaborn \
    pyyaml==5.3.1 pygame pytest probscale imageio snakeviz tensorboard-logger

# Install the smac of the repository
# pip install git+https://github.com/oxwhirl/smac.git@26f4c4e4d1ebeaf42ecc2d0af32fac0774ccc678