# Use the official PHP image
FROM mcr.microsoft.com/devcontainers/php:8.1

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    git \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    nodejs \
    npm \
    php-cli \
    php-mbstring \
    php-xml \
    php-curl \
    php-mysqlnd \        # MySQL Native Driver
    php-bcmath \         # BCMath extension for PHP

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel installer globally
RUN composer global require laravel/installer

# Add Laravel installer to PATH
ENV PATH="$PATH:/root/.composer/vendor/bin"

# Expose port 8000 for Laravel
EXPOSE 8000
