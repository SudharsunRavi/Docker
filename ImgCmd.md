## 1. Build a Docker Image
```bash
docker build -t my-app .
```
- `-t my-app`: Tags the image as **my-app**.
- `.`: The current directory where the Dockerfile is located.

---

## 2. List All Images
```bash
docker images
```
Lists all Docker images on your system.

---

## 3. Tag an Image
```bash
docker tag my-app my-app:v1
```
Adds a version tag to the image.

---

## 4. Remove an Image
```bash
docker rmi my-app
```

```bash
docker rmi -f my-app
```

Removes the image. Use `-f` to force remove if it's in use by a stopped container.

---

## 5. Inspect an Image
```bash
docker inspect my-app
```
Displays detailed information about the image.

---

## 6. View Image History
```bash
docker history my-app
```
Shows the build history of the image layers.

---

## 7. Save & Load Images
```bash
docker save my-app -o my-app.tar
docker load -i my-app.tar
```
Save the image to a file or load it back.

---

## 8. Clean Up Unused Images
```bash
docker image prune
```
Removes dangling (unused) images. Add `-a` to remove all unused images.
