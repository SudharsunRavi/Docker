## 1. List all networks
```bash
docker network ls
```
Shows all networks created in Docker.


## 2. Inspect a network
```bash
docker network inspect bridge
```
Gives detailed info like subnet, IP range, connected containers.


## 3. Create a custom network
```bash
docker network create my-network
```
Creates a new bridge network named `my-network`.


## 4. Run container on a custom network
```bash
docker run -d --name app1 --network my-network nginx
```
`app1` will be attached to `my-network` and can communicate with other containers on the same network.


## 5. Connect a container to a network
```bash
docker network connect my-network app1
```
Adds an existing container `app1` to `my-network`.


## 6. Disconnect a container from a network
```bash
docker network disconnect my-network app1
```
Removes the container from the network.


## 7. Remove a network
```bash
docker network rm my-network
```
Deletes the network. Containers must be stopped/disconnected first.


## 8. Use Host Network
```bash
docker run -d --network host nginx
```
Container shares the host's network → same IP as the host machine.
