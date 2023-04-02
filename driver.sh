#!/bin/bash

# Install build tools and dependencies
sudo apt-get install -y build-essential linux-headers-generic dkms

# Download driver package
wget http://mirrors.kernel.org/ubuntu/pool/restricted/b/bcmwl/bcmwl-kernel-source_6.30.223.271+bdcom-0ubuntu7_amd64.deb

# Install driver package
sudo dpkg -i bcmwl-kernel-source_6.30.223.271+bdcom-0ubuntu7_amd64.deb

# Load new driver
sudo modprobe wl

# Reboot computer
sudo reboot
