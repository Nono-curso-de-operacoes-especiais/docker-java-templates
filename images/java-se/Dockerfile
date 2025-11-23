FROM my-registry.example.com/my-team/base-java:17 AS base
LABEL app="java-se-template"

WORKDIR /app

# TODO: copiar JAR da app ou usar como imagem de runtime genérica
# COPY target/my-app.jar app.jar

ENTRYPOINT ["bash", "-c"]
CMD ["java -version"]
