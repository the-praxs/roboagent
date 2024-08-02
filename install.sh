#!/bin/bash

# Initialize conda
source /opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh

# Create and activate the conda environment
conda create -n roboagent python=3.8 -y
conda activate roboagent

# Install the required packages
pip install torchvision
pip install torch
pip install pyquaternion
pip install pyyaml
pip install rospkg
pip install pexpect
pip install mujoco
pip install dm_control
pip install opencv-python
pip install matplotlib
pip install einops
pip install packaging
pip install h5py
pip install h5py_cache

# Navigate to the detr directory and install the package
cd detr && pip install -e .
