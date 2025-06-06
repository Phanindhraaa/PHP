# Dockerfile
FROM php:8.3-fpm


# Install necessary PHP extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    zip \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install mysqli pdo pdo_mysql


# Set working directory
WORKDIR /var/www/html


# Copy application source code
COPY ./www /var/www/html


# Set permissions for www-data
RUN chown -R www-data:www-data /var/www/html


# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer


# Run composer install only if composer.json exists
RUN if [ -f "composer.json" ]; then composer install; fi


# Expose port 9000 for PHP-FPM
EXPOSE 9000
