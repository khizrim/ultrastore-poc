SHELL := /bin/bash

.DEFAULT_GOAL := help

help:
	@echo "Available targets: up, down, restart, logs, clean, ps"

up:
	docker compose up -d --build
	@echo "Project running: Backend http://localhost:8080 | Frontend http://localhost:3000"

down:
	docker compose down

restart:
	docker compose down
	docker compose up -d --build

logs:
	docker compose logs -f --tail=150

ps:
	docker compose ps

clean:
	docker compose down -v --remove-orphans
	docker system prune -f


# --- Production helpers ---
prod-up:
	docker compose --env-file ./.env -f docker-compose.yml -f docker-compose.prod.yml up -d --build
	@echo "Prod running: Backend http://localhost:8080 (behind Nginx on shop.example.com), Frontend http://localhost:3000 (behind Nginx on app.example.com)"

prod-restart:
	docker compose --env-file ./.env -f docker-compose.yml -f docker-compose.prod.yml up -d --build

prod-down:
	docker compose --env-file ./.env -f docker-compose.yml -f docker-compose.prod.yml down

prod-logs:
	docker compose --env-file ./.env -f docker-compose.yml -f docker-compose.prod.yml logs -f --tail=150
