# Use the official PHP DevContainer image
FROM mcr.microsoft.com/devcontainers/php:8.1

# Install missing system dependencies
RUN apt-get update && apt-get install -y \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    nodejs \
    npm \
    php-mbstring \
    php-xml \
    php-curl \
    php-mysql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel installer globally
RUN composer global require laravel/installer

# Add Laravel installer to PATH
ENV PATH="$PATH:/root/.composer/vendor/bin"

# Expose port 8000 for Laravel dev server
EXPOSE 8000
