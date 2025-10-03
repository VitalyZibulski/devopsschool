# Docker Compose

## Задача
- С помощью контейнерного оркестратора docker-compose поднять
2 сервиса: сборочный и продовый. В сборочном сервисе должна
происходить сборка Java приложения. В продовом сервисе -
запуск приложения. Продовый образ должен быть минимальным
по размеру.
---
process

- sudo su
- apt update
- apt install docker.io
- wget https://github.com/docker/compose/releases/download/v2.39.4/docker-compose-linux-x86_64
- mv docker-compose-linux-x86_64 /bin/docker-compose
- chmod +x /bin/docker-compose
- docker-compose up -d
