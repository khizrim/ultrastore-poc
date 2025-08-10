# UltraStore

Интернет-магазин на базе WordPress/WooCommerce с фронтендом на Next.js.

## Возможности

- Каталог товаров и корзина на WooCommerce
- Быстрый фронтенд на Next.js
- Синхронизация с «Мой Склад»
- Контейнеризация с Docker

## Структура

```
ultrastore-poc/
├─ backend/      # WordPress + WooCommerce
├─ frontend/     # Next.js витрина
└─ README.md
```

## Быстрый старт

```bash
# Запуск всего стека
make setup

# Или пошагово:
make build      # Сборка контейнеров
make up         # Запуск контейнеров
make dev        # Быстрый старт для разработки
```

**Адреса:**
- Фасад: http://localhost:3000
- WordPress админка: http://localhost:8080/wp-admin (admin/admin)

## Полезные команды

```bash
make help       # Все доступные команды  
make logs       # Логи контейнеров
make clean      # Очистка контейнеров
make reset      # Полная пересборка
```
