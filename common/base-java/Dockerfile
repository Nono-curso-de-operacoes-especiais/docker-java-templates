FROM eclipse-temurin:17-jdk-jammy

LABEL maintainer="you@example.com" \
    role="base-java" \
    lang="java"

# TODO: adicionar ferramentas comuns (curl, jq, etc.)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

ARG APP_USER=app
RUN useradd -ms /bin/bash "${APP_USER}"
USER "${APP_USER}"

WORKDIR /app

# Imagens derivadas sobreescrevem ENTRYPOINT/CMD
