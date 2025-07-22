# Use the official PHP DevContainer image
FROM mcr.microsoft.com/devcontainers/php:8.1

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    unzip \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    php-mbstring \
    php-xml \
    php-curl \
    php-mysql \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 18.x and npm via NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
 && apt-get install -y nodejs \
 && rm -rf /var/lib/apt/lists/*

# Install Composer globally
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Laravel installer globally
RUN composer global require laravel/installer

# Add Laravel installer to PATH
ENV PATH="$PATH:/root/.composer/vendor/bin"

# Expose port 8000 for Laravel dev server
EXPOSE 8000
