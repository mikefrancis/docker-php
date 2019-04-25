FROM php:fpm

RUN apt-get update && apt-get install -y \
  curl git zip unzip \
  && docker-php-ext-install -j$(nproc) pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

