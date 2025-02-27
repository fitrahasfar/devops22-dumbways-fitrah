# Gunakan base image yang kecil
FROM golang:1.20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy go.mod dan go.sum untuk dependency
COPY go.mod go.sum ./

# Download semua dependencies
RUN go mod download

# Copy seluruh proyek ke dalam container
COPY . .

# Copy .env ke dalam container
COPY .env .env

# Build aplikasi dalam mode release untuk ukuran lebih kecil
RUN go build -ldflags="-s -w" -o backend

# Gunakan base image yang lebih ringan untuk runtime
FROM alpine:latest

WORKDIR /root/

# Install database client untuk PostgreSQL
RUN apk add --no-cache bash postgresql-client

# Copy binary backend dari tahap build
COPY --from=builder /app/backend .
COPY --from=builder /app/.env .env

# Expose port yang digunakan dalam aplikasi
EXPOSE 8080

# Jalankan migrasi sebelum menjalankan backend
CMD ["sh", "-c", "./backend migrate && ./backend"]