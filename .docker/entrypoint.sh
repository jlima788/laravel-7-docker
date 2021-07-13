#!/bin/bash

chmod -R 777 storage
chown -R www-data:www-data /var/www
composer install
php artisan key:generate
php artisan migrate
php-fpm
