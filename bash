#!/bin/bash

# Установка переменных
url="https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-linux-static-x64.tar.gz"
download_dir="/tmp"
extract_dir="/tmp/xmrig/xmrig-6.21.3"
username="fintafixgames@gmail.com"
random_number=$(shuf -i 1000000000-9999999999 -n 1)

# Создание временной директории
mkdir -p "$extract_dir"

# Загрузка архива
echo "Загрузка архива..."
wget -q "$url" -P "$download_dir"

# Распаковка архива
echo "Распаковка архива..."
tar -xf "${download_dir}/xmrig-6.21.3-linux-static-x64.tar.gz" -C "$extract_dir"

# Запуск xmrig
echo "Запуск xmrig..."
cd "$extract_dir"
./xmrig -o zeph.kryptex.network:7777 -u "${username}/${random_number}" -k --coin zephyr -a rx/0
