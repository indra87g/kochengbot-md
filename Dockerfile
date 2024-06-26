# Gunakan base image Ubuntu
FROM ubuntu:latest

# Update dan install paket yang diperlukan
RUN apt-get update && \
    apt-get install -y \
    git \
    nodejs \
    npm \
    ffmpeg \
    imagemagick \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    npm install
    npm start / node system/index.js

# Tambahkan konfigurasi lain jika diperlukan
# Misalnya, jika Anda ingin menginstal dependensi npm global, tambahkan baris berikut
# RUN npm install -g <package-name>

# Atur direktori kerja
WORKDIR /app

# Salin semua file dari direktori proyek ke dalam direktori kerja di container
COPY . .

# Jalankan perintah default (jika ada)
CMD []

# Expose port jika diperlukan
# EXPOSE 3000
