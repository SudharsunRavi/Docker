# Dockerized Fullstack Setup (React + Node.js) via Network

## 1. Create a Docker Network
```bash
docker network create my-network
```
This creates a custom bridge network where containers can communicate using container names.


## 2. Run Your Node.js Backend on This Network
Assuming your backend listens on port 5000:
```bash
docker run -d --name backend --network my-network -p 5000:5000 my-backend-image
```
- `--name backend`: The container name will be used as the hostname inside the network.  
- `--network my-network`: Connects container to the custom network.


## 3. Run Your React Frontend on This Network
```bash
docker run -d --name frontend --network my-network -p 3000:3000 -e VITE_API_URL=http://backend:5000 my-frontend-image
```
- The environment variable `REACT_APP_API_URL` tells React where to send API calls.  
- Inside this network, `backend` resolves to the backend container’s IP automatically.


## 4. Make API Calls in React
In your React code (e.g., using Axios):
```javascript
import axios from 'axios';

const API_URL = process.env.REACT_APP_API_URL;

export const fetchData = async () => {
  const response = await axios.get(`${API_URL}/api/data`);
  return response.data;
};
```
React will call `http://backend:5000/api/data`  
Docker DNS resolves `backend` → backend container’s IP inside `my-network`.


## 5. Verify Containers on the Network
```bash
docker network inspect my-network
```
You’ll see both frontend and backend containers connected.
a

This setup doesn’t require **docker-compose** but achieves the same goal:  
**React → Backend communication using a custom Docker network.**
