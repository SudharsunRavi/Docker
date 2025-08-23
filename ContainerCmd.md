## 1. Run a Container
```bash
docker run -d -p 3000:3000 --name my-container my-app:v1
```
- `-d`: Run in detached (background) mode.
- `-p 3000:3000`: Map container port 3000 to host port 3000.
- `--name my-container`: Name the container for easier reference.


## 2. List Running Containers
```bash
docker ps
```
Lists only running containers.


## 3. List All Containers (Running + Stopped)
```bash
docker ps -a
```
Lists all containers including stopped ones.


## 4. Stop a Running Container
```bash
docker stop my-container
```
Gracefully stops the container.


## 5. Start a Stopped Container
```bash
docker start my-container
```
Restarts a stopped container.


## 6. Restart a Container
```bash
docker restart my-container
```
Stops and starts the container.


## 7. Remove a Container
```bash
docker rm my-container
```
Removes a container. Use `-f` to force remove a running container.


## 8. Access Container Shell
```bash
docker exec -it my-container sh
```
- `-it`: Interactive mode with terminal.
- `sh`: Shell inside the container. Use `bash` if available.


## 9. View Container Logs
```bash
docker logs my-container
```
Displays application logs from the container.


## 10. Copy Files To/From Container
- Copy from host → container:
```bash
docker cp myfile.txt my-container:/app/
```
- Copy from container → host:
```bash
docker cp my-container:/app/myfile.txt .
```


## 11. Inspect a Container
```bash
docker inspect my-container
```
Displays details like network, mounts, environment variables, etc.


## 12. Auto-Remove Container After Exit
```bash
docker run --rm my-app:v1
```
Removes container automatically when it exits.


## 13. Check Resource Usage
```bash
docker stats
```
Shows CPU, memory, and network usage of containers in real-time.
