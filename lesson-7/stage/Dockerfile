ARG MAVEN_VERSION=3.8.6
ARG OPEN_JDK_VERSION=11

FROM maven:${MAVEN_VERSION}-openjdk-${OPEN_JDK_VERSION}

ARG GIT_REPOSITORY=https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
ARG GIT_BRANCH=master

WORKDIR /app

RUN git clone --branch "${GIT_BRANCH}" "${GIT_REPOSITORY}" . \
 && mvn -B clean package -DskipTests \
 && test -f target/hello-1.0.war

CMD cp /app/target/hello-1.0.war /artifacts/hello-1.0.war