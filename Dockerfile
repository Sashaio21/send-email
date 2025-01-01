# Используем официальный PHP образ с поддержкой Composer
FROM php:8.0-cli

# Устанавливаем зависимости для работы с PHP и Composer
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Создаем рабочую директорию
WORKDIR /var/www/html

# Копируем composer.json и composer.lock, если они существуют, для установки зависимостей
COPY composer.json /var/www/html/
COPY composer.lock /var/www/html/

# Устанавливаем все зависимости проекта через Composer (включая PHPMailer)
RUN composer install

# Копируем все остальные файлы проекта в контейнер
COPY . /var/www/html/

# Открываем порт 80 для вашего приложения
EXPOSE 80

# Запуск приложения (например, если это PHP-сайт)
CMD ["php", "-S", "0.0.0.0:80", "index.php"]
