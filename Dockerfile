# Sử dụng image chính thức của Drupal
FROM drupal:latest

# Cài đặt các phụ thuộc cần thiết
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Cấu hình thư mục làm việc
WORKDIR /var/www/html

# Mở cổng dịch vụ web của Drupal
EXPOSE 80
