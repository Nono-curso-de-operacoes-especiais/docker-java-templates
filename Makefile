IMAGES := java-se java-ee spring-boot pentest
IMAGES_DIR := images

ifneq (,$(wildcard ./.env))
  include .env
  export
endif

.PHONY: help build build-all push push-all

help:
	@echo "Targets disponíveis:"
	@echo "  make build IMAGE=<nome>     - build de uma imagem (ex: IMAGE=java-se)"
	@echo "  make build-all              - build de todas as imagens"
	@echo "  make push IMAGE=<nome>      - push de uma imagem"
	@echo "  make push-all               - push de todas as imagens"

build:
ifndef IMAGE
	$(error Use IMAGE=<nome>, exemplos: $(IMAGES))
endif
	./scripts/build.sh $(IMAGE)

build-all:
	@for img in $(IMAGES); do \
		echo "==> Build $$img"; \
		./scripts/build.sh $$img || exit 1; \
	done

push:
ifndef IMAGE
	$(error Use IMAGE=<nome>, exemplos: $(IMAGES))
endif
	./scripts/push.sh $(IMAGE)

push-all:
	@for img in $(IMAGES); do \
		echo "==> Push $$img"; \
		./scripts/push.sh $$img || exit 1; \
	done
