#!/bin/bash

cd ~/minecraft/downloads

# รวมไฟล์ ZIP ที่ถูกแยก
zip -s 0 1.21.4.zip --out 1.21.4_full.zip

# move file to Desktop
mv 1.21.4_full.zip ~/Desktop

echo "✅ Moved to ~/Desktop"
