FROM zenika/alpine-maven
VOLUME /tmp
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY . .
RUN mvn clean install -DskipTests
ENTRYPOINT ["java","-jar","target/back-hello-0.0.1-SNAPSHOT.jar"]
