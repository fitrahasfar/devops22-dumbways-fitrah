# Gunakan Node.js Alpine untuk ukuran image yang kecil
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Salin package.json dan package-lock.json lebih dahulu (agar caching lebih optimal)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --omit=dev

# Salin seluruh proyek ke dalam container
COPY . .

# Pastikan env disertakan
ENV PORT=3000
ENV HOST=0.0.0.0
ENV NODE_OPTIONS=--openssl-legacy-provider

# Expose port 3000 agar dapat diakses dari luar container
EXPOSE 3000

# Jalankan aplikasi React dalam mode development
CMD ["npm", "start"]