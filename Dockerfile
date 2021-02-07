FROM php:8-apache

RUN apt-get update
RUN apt-get install -y zlib1g-dev libpng-dev libcurl4-openssl-dev libpq-dev libjpeg-dev libfreetype6-dev libxml2-utils
RUN docker-php-ext-install pdo 
RUN docker-php-ext-install pdo_pgsql
RUN docker-php-ext-install gettext
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-install curl
RUN docker-php-ext-install exif
RUN a2enmod rewrite
RUN service apache2 restart

EXPOSE 80

