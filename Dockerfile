# Menggunakan base image PHP dengan dukungan FPM dan ekstensi yang diperlukan
FROM php:8.2-fpm

LABEL name="Malik Ibrahim"
LABEL email="bailyboy021@gmail.com"
LABEL linkedin="https://www.linkedin.com/in/bailyboy021"
LABEL gitHub="https://github.com/bailyboy021"

# Install dependencies
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    curl \
    git \
    libpq-dev \
    libonig-dev \
    && docker-php-ext-install pdo pdo_mysql pdo_pgsql zip

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www/html

# Salin seluruh isi proyek ke dalam container
COPY ./crud /var/www/html

# Ubah permission untuk direktori storage dan bootstrap/cache
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port 9000 untuk PHP-FPM
EXPOSE 9000

# Command untuk menjalankan PHP-FPM
CMD ["php-fpm"]
