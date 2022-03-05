#!/usr/bin/env bash
rm -rf work
mkdir work
cd work
wget https://ftp.evolveo.com/_archive-discontinued_products/multimedia_player/HMC-75FHD/FW_EVOLVE_miniBLADE_v7.0.9.r4347.rar
mv FW_EVOLVE_*.rar fw.rar
unrar x fw.rar
cd EVOLVE_*/USB
mv install.img ../..
cd ../..
mkdir image
tar -C "image" -xvf install.img
rm install.img
cd image/package2
mv yaffs2_1.img ../../yaffs_nomod.img
cd ../..
mkdir fs
cd fs
unyaffs ../yaffs_nomod.img
