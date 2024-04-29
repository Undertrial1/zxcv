#!/bin/bash

# Скачиваем архив
wget https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-linux-static-x64.tar.gz

# Распаковываем архив
tar -xvf xmrig-6.21.3-linux-static-x64.tar.gz

# Заходим в папку с распакованными файлами
cd xmrig-6.21.3

# Генерируем рандомное 10-значное число
random_number=$(shuf -i 1000000000-9999999999 -n 1)

# Запускаем xmrig с указанными параметрами
./xmrig -o zeph.kryptex.network:7777 -u "fintafixgames@gmail.com/$random_number" -k --coin zephyr -a rx/0
