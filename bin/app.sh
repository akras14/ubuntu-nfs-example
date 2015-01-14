#!/bin/bash

# Mount Remote Disk
sudo apt-get install nfs-common -y
sudo mount -t nfs -o proto=tcp,port=2049 172.22.0.10:/ /mnt