FROM maven:3.6-jdk-8

COPY src /home/TestMavenPrj/src

COPY pom.xml /home/TestMavenPrj

COPY serenity.properties /home/TestMavenPrj

RUN mvn -f /home/TestMavenPrj/pom.xml clean test -DskipTests=true