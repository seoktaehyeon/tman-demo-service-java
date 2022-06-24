FROM maven:3.8-openjdk-17 AS java-builder
WORKDIR /workspace
COPY . .
RUN mvn clean package

FROM java:17-jdk
WORKDIR /workspace
COPY health_check.sh health_check.sh
COPY --from=java-builder /workspace/target/svcjava-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 8080

HEALTHCHECK --interval=10s --timeout=5s --retries=3 CMD ./health_check.sh
