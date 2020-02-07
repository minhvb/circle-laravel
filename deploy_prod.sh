#!/bin/bash

cp .env.unistack .env
/usr/local/bin/composer install --optimize-autoloader
php artisan key:generate
php artisan migrate --force
php artisan optimize
