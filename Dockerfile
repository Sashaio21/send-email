# Используем официальный образ PHP с Apache
FROM php:8.0-apache

# Устанавливаем необходимые зависимости для работы с MySQL, Composer и другими расширениями PHP
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    curl \
    git \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli pdo pdo_mysql

# Устанавливаем Composer для управления зависимостями
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Включаем модуль Apache для перезапуска
RUN a2enmod rewrite

# Устанавливаем рабочую директорию для проекта
WORKDIR /var/www/html

# Копируем все файлы вашего проекта в контейнер
COPY . .

# Устанавливаем зависимости проекта с помощью Composer (в том числе PHPMailer)
RUN composer install

# Устанавливаем права доступа на файлы
RUN chown -R www-data:www-data /var/www/html

# Открываем порт 80 для Apache
EXPOSE 80

# Запускаем Apache
CMD ["apache2-foreground"]
