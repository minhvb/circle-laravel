#!/bin/bash

cp .env.unistack .env
composer install --optimize-autoloader
php artisan key:generate
php artisan migrate --force
php artisan optimize
