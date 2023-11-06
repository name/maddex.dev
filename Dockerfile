# Use the official PHP 8.0 Apache image as the base image
FROM php:8.0-apache

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        unzip \
        git \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get clean

# Enable Apache modules
RUN a2enmod rewrite

# Set up your PHP application
COPY ./public /var/www/html/