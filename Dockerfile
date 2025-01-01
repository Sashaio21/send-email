# Используем официальный образ PHP с поддержкой CLI
FROM php:8.0-cli

# Устанавливаем необходимые пакеты для работы с PHP и Composer
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Создаем рабочую директорию для вашего проекта
WORKDIR /var/www/html

# Копируем файлы composer.json и composer.lock в контейнер
COPY composer.json /var/www/html/
COPY composer.lock /var/www/html/

# Устанавливаем все зависимости, указанные в composer.json
RUN composer install

# Копируем все остальные файлы проекта в контейнер
COPY . /var/www/html/

# Открываем порт 80 для вашего приложения
EXPOSE 80

# Запуск встроенного PHP-сервера (если необходимо для вашего проекта)
CMD ["php", "-S", "0.0.0.0:80", "index.php"]
