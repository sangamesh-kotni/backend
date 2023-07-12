FROM --platform=linux/amd64 openjdk:20
WORKDIR /app
COPY target/springboot-backend-0.0.1-SNAPSHOT.jar SpringBootFormExample-1.0.jar
COPY src/main/resources/ssl/local.cert-chain.pem /app/local.cert-chain.pem
ENTRYPOINT ["java", "-jar", "SpringBootFormExample-1.0.jar"]