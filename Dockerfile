# ============================================
# Base PHP 8.2 + Nginx
# ============================================
FROM richarvey/nginx-php-fpm:latest

# ============================================
# Set Working Directory
# ============================================
WORKDIR /var/www/html

# ============================================
# Copy Project Laravel
# ============================================
COPY . /var/www/html

# ============================================
# Install Composer Dependencies
# ============================================
RUN composer install --no-interaction --prefer-dist --optimize-autoloader

# ============================================
# Install Required PHP Extensions
# (zip, gd, xml) → Needed for Maatwebsite Excel
# ============================================
RUN apk update && apk add --no-cache \
    libzip-dev \
    zip \
    unzip \
    freetype-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    oniguruma-dev \
    libxml2-dev && \
    docker-php-ext-configure zip && \
    docker-php-ext-install zip && \
    docker-php-ext-install xml && \
    docker-php-ext-configure gd \
        --with-freetype \
        --with-jpeg && \
    docker-php-ext-install gd

# ============================================
# Give Permissions to Storage & Bootstrap
# ============================================
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# ============================================
# Laravel Commands (Ignore Errors)
# ============================================
RUN php artisan key:generate || true
RUN php artisan storage:link || true

# Clear cache first
RUN php artisan cache:clear || true
RUN php artisan config:clear || true
RUN php artisan route:clear || true
RUN php artisan view:clear || true

# Optimize for production
RUN php artisan optimize || true

# ============================================
# Expose Port for Render
# ============================================
EXPOSE 80

# ============================================
# Start Nginx + PHP-FPM
# ============================================
CMD ["supervisord", "-n"]
