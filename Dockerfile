FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG DEPENDENCY=target
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/back-hello-0.0.1-SNAPSHOT.jar app/lib/back-hello-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","app/lib/back-hello-0.0.1-SNAPSHOT.jar"]
