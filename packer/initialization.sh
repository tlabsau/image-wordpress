#!/bin/bash

sudo dnf update

# -------- Set the timezone --------
sudo timedatectl set-timezone Australia/Melbourne

# -------- Install Apache HTTP Server --------
sudo dnf install httpd -y
sudo systemctl start httpd.service
sudo systemctl enable httpd

# -------- Install PHP --------
sudo dnf install php8.2 -y
sudo dnf install php-cli php-pdo php-fpm php-mysqlnd -y

# -------- install wp-cli --------
sudo curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
sudo chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
