FROM openjdk:11-jdk

WORKDIR /hello-world-app

COPY config.yml ./

ADD target/hello-world-1.0-SNAPSHOT.jar hello-world-1.0-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar","hello-world-1.0-SNAPSHOT.jar", "server", "config.yml"]