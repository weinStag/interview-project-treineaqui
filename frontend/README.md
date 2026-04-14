# GymGate — Frontend

Interface do sistema **GymGate** construída com **React 19 + Vite + Tailwind CSS v4**.

## Stack

- React 19
- Vite 8
- Tailwind CSS 4 (via `@tailwindcss/vite`)

## Como rodar

```bash
npm install
npm run dev
```

Acesse em <http://localhost:5173>.

## Estrutura

```
src/
├── App.jsx            # Raiz da aplicação
├── components/
│   └── Header.jsx     # Header da aplicação
├── App.css
└── index.css          # Importa Tailwind (@import "tailwindcss")
```

## Observações para o desafio

- O backend roda em `http://localhost:3001` — use esse origin para as chamadas fetch.
- Para consumir o ViaCEP: `GET https://viacep.com.br/ws/{cep}/json/`
- Não é necessário configurar variáveis de ambiente para o frontend; use as URLs acima diretamente.
