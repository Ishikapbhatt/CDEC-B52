# Introduction to docker commands
 
 # : Introduction to Docker

### 1. Difference between Monolithic and Microservices
- **Monolithic Applications:**
  - Single codebase for all functionalities.
  - Difficult to scale and maintain.
  - Example: Traditional applications where all features are tightly coupled.

- **Microservices:**
  - Application is divided into smaller, independent services.
  - Easier to scale and maintain.
  - Example: E-commerce application with separate services for inventory, payments, and shipping.

### 2. Difference between Traditional, Virtualization, and Containerization Deployment
- **Traditional Deployment:**
  - Applications run on physical servers.
  - No isolation, resource contention issues.

- **Virtualization:**
  - Uses hypervisors to run multiple virtual machines on a single server.
  - Each VM has its own OS and resources.

- **Containerization:**
  - Uses containers to package applications with their dependencies.
  - Lightweight and efficient compared to VMs.

### 3. Introduction to Containerization, Containers, and Images
- **Containerization:**
  - Technology to run applications in isolated environments called containers.

- **Container:**
  - Lightweight, standalone, executable package of software.

- **Image:**
  - Blueprint for containers, containing application code and dependencies.

### 4. Introduction to Docker
- **Docker:**
  - Open-source platform for developing, shipping, and running applications.
  - Enables containerization.

## Docker Architecture
![](http://apachebooster.com/kb/wp-content/uploads/2017/09/docker-architecture.png)


### 5. Difference between Docker CE and Docker EE
- **Docker Community Edition (CE):**
  - Free and open-source.
  - Suitable for individual developers and small teams.

- **Docker Enterprise Edition (EE):**
  - Paid version with advanced security, management, and support features.
  - Suitable for enterprises.

### 6. Install Docker Engine
- **Installation Steps:**
  - Update your system: `sudo apt-get update`
  - Install prerequisites: `sudo apt-get install apt-transport-https ca-certificates curl software-properties-common`
  - Add Docker's GPG key: `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg`
  - Set up the Docker repository: `echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null`
  - Install Docker: `sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io`
  - Verify installation: `docker --version`

### 7. Run First Container
- **Command to Run:**
  ```bash
  docker run hello-world
  ```
- **Explanation:**
  - Pulls the `hello-world` image if not present.
  - Creates and runs a container from the image.

## Practical Examples:

### Example 1: Running a Simple Container
```bash
docker run ubuntu echo "Hello, Docker!"
```

### Example 2: Listing Running Containers
```bash
docker ps
```

### Example 3: Stopping a Container
```bash
docker stop <container_id>
```

### Example 4: Removing a Container
```bash
docker rm <container_id>
```

## References
- [Docker Documentation](https://docs.docker.com/)


# **: Docker Container Management**

---

## **1. Overview**
Docker containers are lightweight, portable, and self-sufficient units that encapsulate an application and its dependencies.

### **Key Features:**
- Portable across environments.
- Quick startup and shutdown times.
- Resource isolation with minimal overhead.

---

## **2. Essential Docker Container Commands**
Below are the essential Docker commands for container management:

| **Command**               | **Description**                                                                                  | **Example**                                     |
|---------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------|
| `docker run`              | Create and start a container.                                                                   | `docker run nginx`                             |
| `docker start`            | Start an existing container.                                                                    | `docker start <container-id>`                  |
| `docker stop`             | Stop a running container.                                                                       | `docker stop <container-id>`                   |
| `docker ps`               | List running containers.                                                                        | `docker ps`                                    |
| `docker ps -a`            | List all containers, including stopped ones.                                                    | `docker ps -a`                                 |
| `docker rm`               | Remove a container.                                                                             | `docker rm <container-id>`                     |
| `docker logs`             | Fetch the logs of a container.                                                                  | `docker logs <container-id>`                   |
| `docker stats`            | Show resource usage of running containers.                                                      | `docker stats`                                 |
| `docker exec`             | Execute a command in a running container.                                                       | `docker exec -it <container-id> bash`          |
| `docker inspect`          | Display detailed information about a container.                                                 | `docker inspect <container-id>`                |
| `docker cp`               | Copy files between a container and the host.                                                    | `docker cp <container-id>:<file-path> <host>`  |
| `docker prune`            | Remove unused containers and resources.                                                         | `docker container prune`                       |

---

## **3. Practical Examples**

### **3.1. Creating and Running Containers**
```bash
docker run -d -p 8080:80 --name web-server nginx
```
- `-d`: Run container in detached mode.
- `-p`: Map port 8080 on the host to port 80 in the container.
- `--name`: Assign a name to the container.

### **3.2. Stopping and Starting Containers**
```bash
docker stop web-server
docker start web-server
```

### **3.3. Listing Containers**
```bash
docker ps
docker ps -a
```

### **3.4. Removing Containers**
```bash
docker rm web-server
docker rm $(docker ps -aq) # Remove all containers
```

---

## **4. Interacting with Containers**

### **4.1. Execute Commands Inside a Container**
```bash
docker exec -it web-server bash
```
- Access the shell of the running container.

### **4.2. Inspect a Container**
```bash
docker inspect web-server
```
- View configuration details and metadata of the container.

### **4.3. Viewing Logs**
```bash
docker logs web-server
```

---

## **5. Expose Applications to the World**
- Use `-p` or `-P` with the `docker run` command to expose container ports to the host.

#### **Example:**
```bash
docker run -d -p 8080:80 nginx
```
- This exposes the container's port 80 to port 8080 on the host.

---

## **6. Troubleshooting Containers**

### **6.1. Monitoring Resource Usage**
```bash
docker stats
```

### **6.2. Viewing Logs**
```bash
docker logs web-server
```

### **6.3. Copying Files**
```bash
docker cp web-server:/path/in/container /path/on/host
```

---

## **7. Activities for Students**
1. **Create a Container:**
   - Run an NGINX container and access it via the browser.
2. **Interact with a Container:**
   - Execute a command inside a running container using `exec`.
3. **Inspect a Container:**
   - Use `docker inspect` to analyze metadata.
4. **Experiment with Ports:**
   - Expose different ports and test access.
5. **Monitor Resource Usage:**
   - Use `docker stats` to observe real-time resource utilization.

---

## **8. Additional Resources**
- [Docker CLI Reference](https://docs.docker.com/engine/reference/commandline/docker/)
- [Docker Container Management Guide](https://docs.docker.com/config/containers/)
- [Docker Official Documentation](https://docs.docker.com/)


# **Docker Images and Image Management**

## **: Docker Training**

---

### **1. Introduction to Docker Images**
Docker images are lightweight, standalone packages that include all necessary dependencies to run an application. 

- **Key Features:**
  - Built using layers.
  - Reusable and shareable.
  - Stored in repositories like Docker Hub or private registries.

---

### **2. Image Naming and Tagging**
- **Naming Convention:** `repository:tag` (e.g., `nginx:latest`).
- **Default Tag:** If not specified, Docker assumes `latest`.

---

### **3. Docker Repositories**
#### **Docker Hub**
- Public registry for sharing and managing images.
- [Visit Docker Hub](https://hub.docker.com/).

#### **Amazon Elastic Container Registry (ECR)**
- AWS-managed private registry for storing container images.

---

### **4. Common Docker Image Commands**
| **Command**          | **Description**                                                                                  | **Example**                                       |
|-----------------------|--------------------------------------------------------------------------------------------------|--------------------------------------------------|
| `docker pull`         | Download an image from a registry.                                                              | `docker pull nginx:latest`                       |
| `docker images`       | List all local images.                                                                          | `docker images`                                  |
| `docker rmi`          | Remove an image.                                                                                | `docker rmi nginx:latest`                        |
| `docker tag`          | Add a tag to an image.                                                                          | `docker tag nginx:latest myrepo/nginx:v1`        |
| `docker commit`       | Create a new image from a modified container.                                                   | `docker commit <container-id> myimage:v1`        |
| `docker save`         | Save an image to a tar file.                                                                    | `docker save -o nginx.tar nginx:latest`          |
| `docker load`         | Load an image from a tar file.                                                                  | `docker load -i nginx.tar`                       |
| `docker prune`        | Remove unused images.                                                                           | `docker image prune`                             |

---

### **5. Managing Docker Images**

#### **Pulling an Image**
```
docker pull ubuntu:20.04
```

### Tagging an Image

```
docker tag ubuntu:20.04 myrepo/ubuntu:v1
```
### Pushing an Image

- 1 Login to Docker Hub
  ``` 
  docker login -u ishika1998 
  ```
- 2 Tag to Image
```
   docker tag nginx:latest ishika1998/web- server:latest
  ```  
- 3 Push the image
  ```
  docker push ishika1998/web-server:latest 
  ```

  ### Removing an Image
```
docker rmi image name
```
### Saving and Loading Images
```
docker save -o nginx_backup.tar nginx:latest
```
### Load an Image
```
docker load -i nginx_backup.tar
```
### Pruning Unused Images
- Remove Dangling Images
```
docker image prune
```

- Remove All Unused Images
```
docker image prune -a
```


-----

# Introduction to Docker Network

Docker networking allows containers to communicate with each other, the host system, and external networks. It plays a vital role in enabling microservices and distributed applications to function seamlessly.

---

## Different Network Drivers

Docker provides several network drivers for various use cases. Each driver is optimized for different network configurations and scenarios:

1. **Bridge Network**  
   - Default network driver for containers.
   - Containers connected to the same bridge network can communicate with each other.
   - Suitable for standalone containers.

2. **Host Network**  
   - Removes network isolation between the container and the host.
   - The container shares the host's network stack.
   - Useful for performance-critical applications but reduces isolation.

3. **None Network**  
   - No networking for the container.
   - Completely isolated from the host and other containers.

4. **Overlay Network**  
   - Enables communication between containers across multiple hosts.
   - Used in Docker Swarm or Kubernetes environments.
   - Ideal for distributed applications.

5. **Macvlan Network**  
   - Assigns a MAC address to the container, making it appear as a physical device on the network.
   - Provides direct layer 2 access for containers.

6. **Custom Network Plugins**  
   - Allows integration of third-party or custom networking solutions.

---

## Docker Network Commands

### Create a Network
```bash
# Create a custom bridge network
sudo docker network create my_bridge_network

# Create an overlay network
sudo docker network create --driver overlay my_overlay_network
```

### List Networks
```bash
# View all available networks
sudo docker network ls
```

### Inspect a Network
```bash
# Inspect details of a specific network
sudo docker network inspect my_bridge_network
```

### Remove a Network
```bash
# Remove a specific network
sudo docker network rm my_bridge_network
```

---

## Run Containers with Specific Network
```bash
# Run a container attached to a specific network
sudo docker run --network my_bridge_network --name my_container -d nginx
```

---

## Practical Steps

### Example: Create and Use a Custom Bridge Network
1. **Create a custom bridge network:**
   ```bash
   sudo docker network create my_custom_network
   ```

2. **Run containers in the custom network:**
   ```bash
   sudo docker run --network my_custom_network --name container1 -d nginx
   sudo docker run --network my_custom_network --name container2 -d nginx
   docker network create --subnet "192.168.0.0/16" --driver bridge newnetwork
   docker run -d -P --network host nginx:latest
   ```

3. **Verify network communication:**
   ```bash
   sudo docker exec -it container1 ping container2
   ```

4. **Delete the network:**
   ```bash
   sudo docker network rm my_custom_network
   ```
5. **Stop All Conatiner**
   ```
   docker stop $(docker ps -aq)
   ```
      
6. **How to delete all conatiner:**
   ```
   docker rm $(docker ps -aq)
   ```

---

By understanding and leveraging Docker networking, you can build robust, scalable, and secure containerized applications.

-----------

# Docker Volume 

## Introduction to Docker Volume
Docker volumes are a persistent storage mechanism used to store data generated by and used by Docker containers. Volumes are stored outside the container filesystem and are managed by Docker itself, making them a preferred method for sharing data between containers or persisting data beyond the lifecycle of a container.

### Key Benefits of Docker Volumes:
- **Data Persistence**: Data remains even if the container is deleted.
- **Sharing Data**: Easily share data between multiple containers.
- **Backup and Restore**: Simplifies the backup and restoration of container data.
- **Performance**: Offers better performance for certain use cases compared to bind mounts.

---

## Docker Volume Commands

### Command Summary:
1. **List Volumes**:
   ```bash
   docker volume ls
   ```
   Lists all volumes available on the host.

2. **Create Volume**:
   ```bash
   docker volume create <volume_name>
   ```
   Creates a new volume with the specified name.

3. **Inspect Volume**:
   ```bash
   docker volume inspect <volume_name>
   ```
   Displays detailed information about the specified volume.

4. **Remove Volume**:
   ```bash
   docker volume rm <volume_name>
   ```
   Removes a specified volume.

5. **Prune Unused Volumes**:
   ```bash
   docker volume prune
   ```
   Removes all unused volumes to free up space.

---

## Practical Examples

### 1. Create and Attach a Volume to a Container
- Create a volume:
  ```bash
  docker volume create my_volume
  ```

- Run a container with the volume attached:
  ```bash
  docker run -it --name my_container -v my_volume:/data busybox
  ```
  This command mounts the `my_volume` to the `/data` directory inside the container.

- Write data to the volume:
  Inside the container:
  ```bash
  echo "Hello, Docker Volumes!" > /data/hello.txt
  ```

- Exit the container:
  ```bash
  exit
  ```

### 2. Inspect the Volume
- Inspect the `my_volume` to verify its configuration:
  ```bash
  docker volume inspect my_volume
  ```

### 3. Verify Data Persistence
- Start a new container with the same volume:
  ```bash
  docker run -it --name new_container -v my_volume:/data busybox
  ```

- Check the data:
  Inside the container:
  ```bash
  cat /data/hello.txt
  ```
  The text `Hello, Docker Volumes!` should be visible, demonstrating data persistence.

### 4. Delete a Volume
- Stop any containers using the volume:
  ```bash
  docker stop my_container
  docker rm my_container
  ```

- Remove the volume:
  ```bash
  docker volume rm my_volume
  ```

### 5. Prune Unused Volumes
- Remove all volumes not currently in use:
  ```bash
  docker volume prune -f
  ```

---

## Using Volumes with the `-v` Option
- **Bind Mount Example**:
  ```bash
  docker run -it --name bind_mount_example -v /host/path:/container/path busybox
  ```
  This binds a directory on the host machine (`/host/path`) to a directory in the container (`/container/path`).

- **Anonymous Volume Example**:
  ```bash
  docker run -it --name anonymous_volume -v /data busybox
  ```
  Docker creates an unnamed volume and mounts it to the `/data` directory in the container.

- **Named Volume Example**:
  ```bash
  docker run -it --name named_volume_example -v my_volume:/data busybox
  ```
  Uses a named volume (`my_volume`) and mounts it to `/data` in the container.

---

##  Volumes
- Sharing data between containers and containers and host.
- Virtual "dicsc"
- Two types:
  + Persistent : Keep when container went away.
  + Ephemeral: exists in container life.
- Volumes is not a part of image.

### 1. Sharing data with the host
- like VMware.
- Sharing folders with the host
ex:
```
mkdir /home/docker/my-volume
docker run -ti -v=/home/docker/my-volume:/shared-folder ubuntu bash
cd /shared-folder
touch my-data
Press Crtl + D

ls ./my-volume/shared-folder
```
- Sharing a "single file" into a container

### 2. Sharing Data between Containers
* volumes-from
* Shared disks that exist only as long as they are being used
* Can be shared between containers

ex
- Container #1
```
docker run -ti -v /shared-data ubuntu bash
echo "hello, is it great!" > /shared-data/my-file
```
- Container #2
```
docker ps -l
docker run -ti --volumnes-from jovial_goodall ubuntu bash
cat /shared-data/my-file


## Best Practices
1. Use named volumes for better manageability.
2. Avoid storing critical application data in anonymous volumes.
3. Regularly prune unused volumes to free disk space.
4. Use volume inspection to troubleshoot volume-related issues.

---

This tutorial provides an overview of Docker Volumes and demonstrates how to manage them effectively. Practice these commands to gain confidence in handling data persistence and sharing in Docker environments.


----

# Introduction to Dockerfile

## What is a Dockerfile?
A **Dockerfile** is a text document that contains all the instructions required to build a Docker image. It automates the process of creating Docker images, ensuring consistency and repeatability.

---

## Key Instructions in a Dockerfile

### 1. **FROM**
Specifies the base image to use for building the Docker image.
```dockerfile
FROM ubuntu:20.04
```

### 2. **LABEL**
Adds metadata to the image.
```dockerfile
LABEL maintainer="youremail@example.com"
LABEL version="1.0"
LABEL description="A simple example"
```

### 3. **RUN**
Executes a command during the build process.
```dockerfile
RUN apt-get update && apt-get install -y curl
```

### 4. **CMD**
Specifies the default command to run when a container is started. It is overridden by commands passed during runtime.
```dockerfile
CMD ["echo", "Hello, World!"]
```

### 5. **ENTRYPOINT**
Defines the main command that cannot be overridden. Allows passing arguments to the defined command.
```dockerfile
ENTRYPOINT ["/bin/bash"]
```

### 6. **ENV**
Sets environment variables.
```dockerfile
ENV APP_ENV=production
ENV APP_PORT=8080
```

### 7. **ARG**
Defines build-time variables.
```dockerfile
ARG VERSION=1.0
RUN echo "Building version $VERSION"
```

### 8. **COPY**
Copies files or directories from the local filesystem to the container.
```dockerfile
COPY index.html /var/www/html/
```

### 9. **ADD**
Similar to `COPY`, but can also extract TAR files and download remote files.
```dockerfile
ADD app.tar.gz /app/
```

### 10. **EXPOSE**
Declares the network port the container listens on.
```dockerfile
EXPOSE 8080
```

### 11. **USER**
Specifies the user to run the container as.
```dockerfile
USER nonrootuser
```

### 12. **WORKDIR**
Sets the working directory for subsequent instructions.
```dockerfile
WORKDIR /app
```

---

## Building a Docker Image
Use the `docker build` command to create an image from a Dockerfile.
```bash
docker build -t my-image:1.0 .
```

---

## Pushing a Docker Image to a Repository
Use the `docker push` command to upload the image to a Docker registry (e.g., DockerHub).
```bash
docker tag my-image:1.0 username/my-image:1.0
docker push username/my-image:1.0
```

---

## Pulling a Docker Image
Use the `docker pull` command to download an image from a registry.
```bash
docker pull username/my-image:1.0
```

---

## Example Dockerfile
```dockerfile
# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app source code
COPY . ./

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
```


### Notes for Students
- Always use specific tags for images to avoid ambiguity.
- Use multi-stage builds for optimizing large images.
- Test the Dockerfile thoroughly to ensure proper functionality of the image.

--------
# Brief Introduction to Docker Compose

Docker Compose is a tool that allows you to define and run multi-container Docker applications using a simple YAML file. With Docker Compose, you can configure and launch your entire application stack, including services, networks, and volumes, in a single command.

## Key Features of Docker Compose:
1. **Single Configuration**: Define all services in a single `docker-compose.yml` file.
2. **Multi-Container Management**: Orchestrates multiple containers that form an application.
3. **Easy to Use**: Simple commands like `docker-compose up` and `docker-compose down` for deployment and teardown.
4. **Scalable**: Allows scaling individual services.

---

# docker-compose installation

````
sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d'"' -f4)/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
````
````
sudo chmod +x /usr/local/bin/docker-compose
````
````
docker-compose --version
````

### docker compose commands
````
vim docker-compose.yaml
````
````
docker-compose build
````
````
docker-compose up -d
````
````
docker-compose down
````

## Conclusion


# Deploy a Three-Tier Application Using Docker Compose

In this example, we will deploy a **three-tier application** using Docker Compose. The three tiers include:
1. **Frontend**: Studentapp (UI layer).
2. **Backend**: Java Application
3. **Database**: MySQL (data layer).

## Prerequisites:
- Install **Docker** and **Docker Compose** on your machine.
- Basic understanding of Docker and containers.

---

## Step 1: Directory Structure

Create a project directory and organize it as follows:
```bash
three-tier-app/
│   docker-compose.yml
│
├── frontend/
│   └── Dockerfile
│
├── backend/
│   └── Dockerfile
│
└── database/
    └── init.sql
```

---
