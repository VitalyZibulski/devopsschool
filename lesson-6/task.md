# Docker

## Задача
- Упаковать Java приложение в Docker- контейнер. Процесс сборки
производить также в контейнере.
---

process
- sudo su
- apt update
- apt install docker.io
- docker run -d -p 80:80
- docker build -t initial-tomcat .
  (docker build --no-cache -t initial-tomcat .)
- docker run -d -p 8080:8080 --name initial-tomcat initial-tomcat