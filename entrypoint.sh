#!/bin/sh

# تشغيل Laravel Migration بعد بدء الحاوية
php artisan key:generate
php artisan config:cache
php artisan migrate --force

# تشغيل Apache
apache2-foreground
