FROM php:7.4-fpm-alpine

RUN apk --update add \
    tzdata \
    autoconf \
    shadow \
    dpkg-dev dpkg \
    file \
    g++ \
    gcc \
    libc-dev \
    make \
    pkgconf \
    re2c \
    wget \
    libxml2-dev \
    postgresql-dev \
    icu-dev \
    curl \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/include/postgresql/ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install pgsql pdo_pgsql bcmath intl sockets \
    && docker-php-ext-enable opcache \
    && rm -rf /var/cache/apk/*

RUN pecl install pcov && docker-php-ext-enable pcov

RUN cp /usr/share/zoneinfo/Europe/Moscow /etc/localtime
RUN curl -L https://getcomposer.org/composer-stable.phar -o /usr/bin/composer && chmod a+x /usr/bin/composer
