FROM php:7.1.2-apache 
RUN docker-php-ext-install mysqli &&  apt-get update && apt-get install -y  --no-install-recommends vim curl && apt-get clean
