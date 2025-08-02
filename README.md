# UltraStore

A proof-of-concept headless web-store that combines a WordPress / WooCommerce backend with a modern Next.js storefront and real-time stock synchronisation with «Мой Склад».

---

## ✨ Key Features

- **Product catalogue & shopping cart** powered by WooCommerce.
- **Headless storefront** written in Next.js (React) for fast, SEO-friendly pages.
- **Stock synchronisation** with «Мой Склад» to keep inventory always up-to-date.
- **API gateway / backend** for bespoke business logic and 3-rd party integrations.
- **Docker-first local development** – everything runs in containers.

## 🛠 Tech Stack

| Layer        | Technology |
|--------------|------------|
| Storefront   | Next.js, React, TypeScript |
| Backend      | WordPress, WooCommerce (PHP) |
| API / Workers| Node.js (Fastify) |
| DB / Cache   | PostgreSQL, Redis |
| DevOps       | Docker / Docker Compose |
| Inventory    | «Мой Склад» REST API |

> NOTE: Only the minimum code required for the proof-of-concept is included. Feel free to extend!

## ⏳ Project Structure

```
ultrastore-poc/
├─ backend/      # WordPress backend (WooCommerce)
├─ frontend/     # Next.js storefront
└─ README.md     # You are here
```

Each sub-directory contains its own README with more detailed setup instructions.

## 🚀 Quick Start

1. **Clone the repo (including submodules)**

   ```bash
   git clone --recursive git@github.com:<you>/ultrastore-poc.git
   cd ultrastore-poc
   ```

   If you forgot the `--recursive` flag, initialise submodules manually:

   ```bash
   git submodule update --init --recursive
   ```

2. **Create environment files**

   Copy the example environment files and fill in the blanks:

   ```bash
   cp backend/.env.example backend/.env
   cp frontend/.env.example frontend/.env
   ```

3. **Start the full stack with Docker** *(recommended)*

   ```bash
   docker compose up --build
   ```

   The storefront will be available at <http://localhost:3000> and WordPress at <http://localhost:8080>.

4. **Or run services individually**

   See the READMEs inside `frontend/` and `backend/` for service-specific instructions. Quick peek:

   ```bash
   # Storefront (Next.js)
   cd frontend && pnpm i && pnpm dev

   # WordPress backend
   cd backend && wp-env start
   ```

## 🧩 Submodules

This repository uses Git submodules for some shared libraries / themes. After cloning, make sure you have initialised and updated them:

```bash
git submodule update --init --recursive
```

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

1. Fork the project
2. Create your feature branch (`git checkout -b feat/amazing-feature`)
3. Commit your changes (`git commit -m '[feat] Add amazing feature'`)
4. Push to the branch (`git push origin feat/amazing-feature`)
5. Open a pull request

Please follow the conventional commit style and keep PRs focused.

## 📄 License

Released under the MIT License – see the LICENSE file for details.
