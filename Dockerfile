FROM openjdk:8 AS builder

RUN mkdir fineract
COPY . fineract

WORKDIR fineract
ARG mysqlserver=fineractmysql
RUN sed -i "s/localhost/${mysqlserver}/" ./fineract-provider/src/main/resources/sql/migrations/list_db/V1__mifos-platform-shared-tenants.sql
RUN ./gradlew clean -x test war


FROM bitnami/tomcat:7.0.94 as fineract

USER root
ARG mysqlserver=fineractmysql
RUN apt-get update -qq && apt-get install -y wget
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre

COPY --from=builder /fineract/build/libs/fineract-provider.war /opt/bitnami/tomcat/webapps

RUN keytool -genkey -keyalg RSA -alias tomcat -keystore /opt/bitnami/tomcat/tomcat.keystore -keypass xyz123 -storepass xyz123 -noprompt -dname "CN=Fineract, OU=Fineract, O=Fineract, L=Unknown, ST=Unknown, C=Unknown"
COPY ./docker/server.xml /opt/bitnami/tomcat/conf
RUN sed -i "s/fineractmysql/${mysqlserver}/" /opt/bitnami/tomcat/conf/server.xml
RUN chmod 664 /opt/bitnami/tomcat/conf/server.xml
WORKDIR /opt/bitnami/tomcat/lib
RUN wget http://central.maven.org/maven2/org/drizzle/jdbc/drizzle-jdbc/1.4/drizzle-jdbc-1.4.jar
