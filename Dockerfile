FROM php:8.3-apache

RUN docker-php-ext-install pdo pdo_mysql
COPY LoveCards /var/www/html
RUN cd /var/www/html && rm -rf .gitignore .github .dev ToDo.md .git DOCKER_ENV docker_tag output.log composer.json composer.lock script lock.txt upload.md test.env think