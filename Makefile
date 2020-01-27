name="docker-cats"
BUILDID=$(shell date +%Y%m%d-%H:%M:%S)
tag="200"

.PHONY: all run test stop help commit push registry

all: help

save: add commit push

deploy: test build commit push registry

build: ## Construye imagen de docker
	@docker build -t siorellana/$(name):$(BUILDID) . || \
	echo "[ERROR] Imagen no creada"

run: ## Ejecuta contenedor con puerto 81
	@echo "[INFO] Starting container"
	@docker run -d --name $(name) -p 9191:80 siorellana/$(name):$(BUILDID) || \
	echo "[ERROR] Container already started"
	@echo "[END] Inicio completado"

test: ## Saluda a lo millenialmake 
	@echo $(BUILDID)

verify: my_app/index.html
	@echo "[Info] HTML file exists"

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

commit: ## Realiza commit con variable de whatthecommit
	@git commit -am 'Se han realizado nuevos cambios - su build id es: $(BUILDID)'

add: ## Realiza push a master
	@git add . || \
	echo "[ERROR] Cambios no guardados"

push: ## Realiza push a master
	@git push origin master || \
	echo "[ERROR] Codigo no pusheado a Git"

registry: ## Envía imagen a docker hub
	@docker push siorellana/cats:$(tag) || \
	echo "[ERROR] Codigo no pusheado a Docker"

