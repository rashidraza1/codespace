#!/bin/bash

echo "Starting Laravel setup..."

# Install Laravel dependencies
composer install

# Copy .env.example to .env
cp .env.example .env

# Generate Laravel app key
php artisan key:generate

# Install frontend dependencies
npm install
npm run dev

echo "✅ Laravel setup completed inside Codespace"
