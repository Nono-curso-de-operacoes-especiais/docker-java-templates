FROM eclipse-temurin:17-jdk-jammy AS builder

WORKDIR /workspace

# TODO: ajustar conforme seu build (Maven/Gradle)
# COPY pom.xml mvnw* ./
# COPY .mvn .mvn
# RUN ./mvnw dependency:go-offline

# COPY src src
# RUN ./mvnw package -DskipTests

# Runtime
FROM eclipse-temurin:17-jre-jammy

LABEL app="spring-boot-template"

WORKDIR /app

# TODO: copiar JAR gerado no stage de build
# COPY --from=builder /workspace/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
