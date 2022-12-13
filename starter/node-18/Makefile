IMAGE_NAME=app
COMPOSE=docker compose --project-directory .devcontainer -p $(IMAGE_NAME)

dev: compose
	@docker exec -it $(IMAGE_NAME)-app bash

compose:
	@$(COMPOSE) up --build -d

down:
	@$(COMPOSE) down
