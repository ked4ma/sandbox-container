# =======================================
# helper
# =======================================
validate_env:
ifndef TARGET
	@make help
endif

help:
	@echo "[help] ================="
	@echo "[help] Usage1: make list"
	@echo "[help] Usage2: make <action> TARGET=<environment>"
	@echo "[help]           action:"
	@echo "[help]             - run"
	@echo "[help] ================="
	@exit 1

# =======================================
# targets
# =======================================

list:
	@echo "[prepared ENVs are followings]"
	@docker-compose config --services | xargs -IS echo ' - S'

clean:
	docker ps -q -f status=exited | xargs -t docker rm
	docker images -q -f dangling=true | xargs -t docker rmi

build: validate_env
	@echo "[info] build image: $(TARGET)"
	@docker-compose build $(TARGET)

run: validate_env
	@echo "[info] run sandbox container: $(TARGET)"
	@docker-compose run --service-ports --rm -v `pwd`/container-data/:/data -w /data $(TARGET) /bin/bash

run-simple: validate_env
	@echo "[info] run sandbox container: $(TARGET)"
	@docker-compose run --service-ports --rm -v `pwd`/container-data/:/data -w /data $(TARGET)

start: validate_env
	@echo "[info] start sandbox container: $(TARGET)"
	@docker-compose up -d $(TARGET)

stop: validate_env
	@echo "[info] stop sandbox container: $(TARGET)"
	@docker-compose stop $(TARGET)

down:
	@docker-compose down

.PHONY: validate_env help list clean build run
