# # #!/bin/bash


# Install dependencies --optimize-autoloader --no-dev

export HOME=/home/ubuntu && composer install -d /home/ubuntu/seemee-api


# Copy configuration from /var/www/.env [deprecated]
# cp .env.example .env



# # Clear any previous cached views
php /home/ubuntu/seemee-api/artisan view:clear

# Updating GEO IP
# php /home/ubuntu/seemee-api/artisan geoip:update


# caching routes (tests)
# php /home/ubuntu/seemee-api/artisan route:cache



