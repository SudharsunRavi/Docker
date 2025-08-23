## 1. Build a Docker Image
```bash
docker build -t my-app .
```
- `-t my-app`: Tags the image as **my-app**.
- `.`: The current directory where the Dockerfile is located.


## 2. Run the Image as a Container
```bash
docker run -p 3000:3000 my-node-app
```

- -p 3000:3000 → Maps container's port 3000 to your host's port 3000.
- Runs the app inside a container using the image.


## 3. List All Images
```bash
docker images
```
Lists all Docker images on your system.


## 4. Tag an Image
```bash
docker tag my-app my-app:v1
```
Adds a version tag to the image.


## 5. Remove an Image
```bash
docker rmi my-app
```

```bash
docker rmi -f my-app
```

Removes the image. Use `-f` to force remove if it's in use by a stopped container.


## 6. Inspect an Image
```bash
docker inspect my-app
```
Displays detailed information about the image.


## 7. View Image History
```bash
docker history my-app
```
Shows the build history of the image layers.


## 8. Save & Load Images
```bash
docker save my-app -o my-app.tar
docker load -i my-app.tar
```
Save the image to a file or load it back.


## 9. Clean Up Unused Images
```bash
docker image prune
```
Removes dangling (unused) images. Add `-a` to remove all unused images.
