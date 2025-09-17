# Артефакты сборки

## Задача
Написать скрипт, который:
- В репозитории GitHub найти проекты на Java, собрать их с
  помощью системы сборки Maven. Получить артефакты сборки
  JAR, WAR файлы. WAR артефакты запустить в контейнере
  сервлетов Apache Tomcat.
---
process

Boxfuse
- sudo apt get
- sudo apt install default-jdk
- sudo apt install maven
- sudo apt-cache policy tomcat* - какие есть репозитории tomcat
- sudo apt install tomcat10
- git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
- mvn package
- sudo cp hello-1.0.war /var/lib/tomcat10/webapps
- open for aws port 8080

Jenkins
- sudo apt update
- sudo apt install -y curl tar
- sudo apt remove -y maven || true
- cd /tmp 
- curl -fsSLO https://archive.apache.org/dist/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
- sudo tar -C /opt -xzf apache-maven-3.9.6-bin.tar.gz
- sudo ln -sfn /opt/apache-maven-3.9.6 /opt/maven

- sudo tee /etc/profile.d/maven.sh >/dev/null <<'EOF'
- export M2_HOME=/opt/maven 
- export PATH="$M2_HOME/bin:$PATH"
- EOF
- sudo chmod +x /etc/profile.d/maven.sh
- source /etc/profile.d/maven.sh

- mvn -v
