# GymGate — Monorepo Starter

Welcome to the **GymGate** monorepo! This repository is structured as a full-stack technical test starter. Below you will find instructions for running every part of the project.

---

## Project Structure

```
.
├── backend/          # Express.js API
├── frontend/         # React + Vite + Tailwind CSS
├── database/
│   └── init.sql      # Schema and seed data
├── docker-compose.yml
└── README.md
```

---

## Prerequisites

- [Node.js](https://nodejs.org/) v18+
- [Docker](https://www.docker.com/) & Docker Compose v2

---

## 1 — Database (Docker)

### Start the MySQL container

```bash
docker compose up -d
```

The container will:

- Spin up **MySQL 8** and expose it on port **3306**.
- Automatically execute `database/init.sql`, which creates the `planos` and `alunos` tables and inserts seed data.

### Environment variables (optional override)

You can customise the credentials by creating a `.env` file in the project root:

```env
MYSQL_ROOT_PASSWORD=gymgate_password
MYSQL_DATABASE=gymgate
```

### Stop the container

```bash
docker compose down
```

---

## 2 — Backend

### Install dependencies

```bash
cd backend
npm install
```

### Configure environment

Copy the example file and fill in your values:

```bash
cp .env.example .env
```

Default `.env.example`:

```env
PORT=3001

DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=gymgate_password
DB_NAME=gymgate
```

### Run the development server

```bash
npm run dev
```

The API will be available at <http://localhost:3001>.

### Health check

```
GET http://localhost:3001/health
```

Expected response:

```json
{ "status": "ok", "message": "GymGate API is running" }
```

---

## 3 — Frontend

### Install dependencies

```bash
cd frontend
npm install
```

### Run the development server

```bash
npm run dev
```

The app will be available at <http://localhost:5173>.

### Build for production

```bash
npm run build
```

---

## The Challenge

> ✏️ *Placeholder — the specific tasks will be pasted here.*
