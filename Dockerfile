FROM php:zts-alpine

WORKDIR /app

RUN docker-php-ext-install pdo pdo_mysql

COPY . /app

EXPOSE 9000

ENTRYPOINT [ "php", "artisan", "serve", "--host=0.0.0.0", "--port=9000"]