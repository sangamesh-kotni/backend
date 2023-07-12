FROM --platform=linux/amd64 openjdk:20
WORKDIR /app
COPY target/springboot-backend-0.0.1-SNAPSHOT.jar SpringBootFormExample-1.0.jar
ENTRYPOINT ["java", "-jar", "SpringBootFormExample-1.0.jar"]