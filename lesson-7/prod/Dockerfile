ARG TOMCAT_VERSION=10
ARG JAVA_VERSION=11
ARG LOCAL_HOST=http://localhost:8080/
ARG EXPOSE_PORT=8080

FROM tomcat:${TOMCAT_VERSION}
WORKDIR /app

EXPOSE ${EXPOSE_PORT}

HEALTHCHECK --interval=30s --start-period=20s --timeout=5s --retries=3 \
  CMD wget -qO- ${LOCAL_HOST} >/dev/null || exit 1

CMD cp /app/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war && \
   catalina.sh run