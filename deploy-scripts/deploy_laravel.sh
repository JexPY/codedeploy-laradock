#!/bin/bash

cd ./

# Create cache and chmod folders
mkdir -p ./bootstrap/cache
mkdir -p ./storage/framework/sessions
mkdir -p ./storage/framework/views
mkdir -p ./storage/framework/cache
mkdir -p ./public/files/

# Install dependencies
export COMPOSER_ALLOW_SUPERUSER=1
composer install -d ./

# Copy configuration from /var/www/.env, see README.MD for more information
cp .env.example .env



# Clear any previous cached views
php ./artisan config:clear
php ./artisan cache:clear

# Optimize the application
php ./artisan config:cache
php ./artisan optimize
#php ./artisan route:cache

# Change rights
chmod 777 -R ./bootstrap/cache
chmod 777 -R ./storage
chmod 777 -R ./public/files/

# Bring up application
php ./artisan up