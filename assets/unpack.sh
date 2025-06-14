#!/bin/bash

cd ~/minecraft/downloads

# รวมไฟล์ ZIP ที่ถูกแยก
zip -s 0 1.21.4.zip --out 1.21.4_full.zip

# แตกไฟล์ออก
unzip 1.21.4_full.zip -d extracted

echo "✅ Unzipped to ~/minecraft/downloads/extracted"
