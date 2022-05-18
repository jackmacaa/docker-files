FROM php:8.0-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli pdo pdo_mysql
RUN pecl install xdebug && docker-php-ext-enable xdebug
RUN a2enmod rewrite