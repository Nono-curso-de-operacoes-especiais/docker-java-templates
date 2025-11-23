# Docker Images Template

Repositório template para manter múltiplas imagens Docker reutilizáveis
(Java SE, Java EE, Spring Boot, pentest, etc.).

## Estrutura

- `common/`: imagens base compartilhadas (ex.: `base-java`, `base-pentest`).
- `images/`: imagens finais organizadas por tecnologia.
- `scripts/`: scripts utilitários para build, push e testes.
- `examples/docker-compose`: exemplos de uso das imagens em outros projetos.

## Convenções

- Cada imagem em `images/*` tem:
  - `Dockerfile`
  - `.dockerignore`
  - `README.md`
  - `image.env` com variáveis de build/tag

## Uso rápido

```bash
# Carregar variáveis globais
cp .env.example .env
# editar .env

# Build de todas as imagens
make build-all

# Build de uma imagem específica
make build IMAGE=java-se

# Push de todas as imagens
make push-all
