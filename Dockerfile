# ใช้ base image จาก node
FROM node:14.20.0

# สร้าง directory ใน container
WORKDIR /app

# คัดลอก package.json และ package-lock.json
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์ทั้งหมดจาก directory ปัจจุบันไปยัง directory /app ใน container
COPY . .

# เปิด port 3000
EXPOSE 1337

# รันคำสั่งเมื่อ container ถูกสร้าง
CMD ["npm", "start"]
