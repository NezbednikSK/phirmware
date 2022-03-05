#!/usr/bin/env bash
rm -f install.img
cd work
chmod +x image/mkfs.jffs2
mkyaffs2 --yaffs-ecclayout fs yaffs.img
mv yaffs.img image/package2/yaffs2_1.img
cd image
tar -cvf ../../install.img *
rm package2/yaffs2_1.img
