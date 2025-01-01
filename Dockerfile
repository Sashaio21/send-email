# Используем официальный образ PHP с Apache
FROM php:8.0-apache

# Устанавливаем необходимые зависимости для работы с MySQL и другими расширениями PHP
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd mysqli pdo pdo_mysql

# Включаем модуль Apache для перезапуска
RUN a2enmod rewrite

# Копируем файлы вашего проекта в контейнер
COPY . /var/www/html/

# Устанавливаем права доступа на файлы
RUN chown -R www-data:www-data /var/www/html

# Открываем порт 80 для Apache
EXPOSE 80

# Запускаем Apache
CMD ["apache2-foreground"]
