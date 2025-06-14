#!/bin/bash

# สร้างโฟลเดอร์ถ้ายังไม่มี
mkdir -p ~/minecraft/downloads
cd ~/minecraft/downloads

# URLs ของไฟล์ (แก้ให้ตรงกับ repo และไฟล์ของคุณ)
BASE_URL="https://assets-ae.vercel.app/"

# รายการไฟล์ที่ต้องดาวน์โหลด (เพิ่ม/ลด ตามจำนวนจริง)
FILES=(
  "1.21.4.z01"
  "1.21.4.z02"
  "1.21.4.z03"
  "1.21.4.z04"
  "1.21.4.zip"
)

# ดาวน์โหลดไฟล์ทั้งหมด
for FILE in "${FILES[@]}"; do
  echo "Downloading $FILE..."
  wget "$BASE_URL/$FILE" -O "$FILE"
done

echo "✅ Download complete."
