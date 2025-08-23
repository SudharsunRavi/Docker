# Dockerized Fullstack Setup (React + Node.js + Postgres)

## 1. Create a Docker Network
```bash
docker network create my-network
```
All containers in this network will communicate by hostname.


## 2. Run Postgres on This Network
```bash
docker run -d --name db   --network my-network   -e POSTGRES_USER=myuser   -e POSTGRES_PASSWORD=mypassword   -e POSTGRES_DB=mydb   -p 5432:5432   postgres:15
```

- `--name db`: Inside the network, the database hostname will simply be `db`.
- `POSTGRES_USER`, `POSTGRES_PASSWORD`, `POSTGRES_DB`: Environment variables to initialize the DB.
- `-p 5432:5432`: Maps Postgres to your host if you want external access.


## 3. Run Node.js Backend on This Network
```bash
docker run -d --name backend   --network my-network   -p 5000:5000   -e DB_HOST=db   -e DB_USER=myuser   -e DB_PASS=mypassword   -e DB_NAME=mydb   my-backend-image
```

Your backend can now connect to Postgres with `host=db port=5432`.

Example connection string (Node.js, using pg):
```javascript
const { Pool } = require('pg');

const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  port: 5432,
});
```


## 4. Run React Frontend on This Network
```bash
docker run -d --name frontend   --network my-network   -p 3000:3000   -e REACT_APP_API_URL=http://backend:5000   my-frontend-image
```

The React app calls `http://backend:5000/api/...`.

The backend then talks to Postgres via `db:5432`.


## 5. Verify Everything
```bash
docker network inspect my-network
```

You’ll see `frontend`, `backend`, and `db` all listed.
