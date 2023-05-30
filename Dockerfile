FROM openjdk:8

COPY target/integrations-platform-offline-product-catalog-*-SNAPSHOT.jar /usr/src/integrations-platform-offline-product-catalog.jar
COPY target/classes/application.yml /usr/src/application.yml
RUN mkdir -p /usr/src/log
COPY target/classes/log/logging.xml /usr/src/log/logging.xml

WORKDIR /usr/src

CMD java \
-jar integrations-platform-offline-product-catalog.jar \
-XX:+HeapDumpOnOutOfMemoryError

EXPOSE 1234