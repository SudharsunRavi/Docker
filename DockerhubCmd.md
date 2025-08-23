## 1. Login to Docker Hub
```bash
docker login
```
Authenticates your local machine with Docker Hub.  
Stores credentials in `~/.docker/config.json`.


## 2. Tag an Image for Docker Hub
```bash
docker tag my-app:v1 username/my-app:v1
```
Prepares your local image with the proper name format `<username>/<repo>:<tag>` for Docker Hub.


## 3. Push an Image to Docker Hub
```bash
docker push username/my-app:v1
```
Uploads the image to your Docker Hub repository so it can be pulled later.


## 4. Pull an Image from Docker Hub
```bash
docker pull username/my-app:v1
```
Downloads the image from Docker Hub to your local system.


## 5. List Local Images
```bash
docker images
```
Lists all images available locally with name, tag, size, and ID.


## 6. Remove a Local Image
```bash
docker rmi username/my-app:v1
```
Deletes the image from your local system but keeps it on Docker Hub.


## 7. View Image History
```bash
docker history username/my-app:v1
```
Displays all layers created in the image build process.


## 8. Inspect Image Metadata
```bash
docker inspect username/my-app:v1
```
Shows detailed information in JSON format about the image such as ENV variables, ports, and layers.


## 9. Save and Load Images
**Save an image to a tar file:**
```bash
docker save username/my-app:v1 -o my-app.tar
```

**Load the image back from a tar file:**
```bash
docker load -i my-app.tar
```
Useful for offline transfers or backups of Docker images.


## 10. Logout from Docker Hub
```bash
docker logout
```
Removes locally stored Docker Hub credentials, useful on shared systems.
