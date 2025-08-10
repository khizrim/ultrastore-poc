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
