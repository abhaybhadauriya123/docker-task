# Docker Task — AWS EC2

## Objective
Install Docker on an AWS EC2 Ubuntu instance and explore Docker images, containers, volumes, and networks.

## Technology Stack
- AWS EC2
- Ubuntu Server
- Docker

## Installation and verification
```bash
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable --now docker
docker --version
sudo systemctl status docker
sudo docker run hello-world
```

Verify that Docker shows a version, the service is `active (running)`, and `hello-world` prints `Hello from Docker!`.

## Docker Images
```bash
sudo docker images
sudo docker pull nginx
sudo docker images
sudo docker image inspect nginx
```
Screenshot: `screenshots/04-docker-images.png`

## Docker Containers
```bash
sudo docker run -d --name docker-task-nginx -p 8081:80 nginx
sudo docker ps
sudo docker ps -a
sudo docker logs docker-task-nginx
sudo docker inspect docker-task-nginx
curl http://localhost:8081
sudo docker stop docker-task-nginx
```
If the container was already removed, rerun the `docker run` command before collecting these outputs. Publicly exposing port 8081 is not required for this terminal test.

Screenshot: `screenshots/05-docker-containers.png`

## Docker Volumes
```bash
sudo docker volume create task-volume
sudo docker volume ls
sudo docker volume inspect task-volume
sudo docker run --rm -v task-volume:/data busybox sh -c "echo Docker volume test > /data/test.txt"
sudo docker run --rm -v task-volume:/data busybox cat /data/test.txt
```
Expected final output: `Docker volume test`

Screenshot: `screenshots/06-docker-volumes.png`

## Docker Networks
```bash
sudo docker network ls
sudo docker network create task-network
sudo docker network inspect task-network
sudo docker network rm task-network
```
The custom network was created, inspected, and removed after testing.

Screenshot: `screenshots/07-docker-networks.png`

## Evidence / Screenshots
Add your actual EC2 terminal screenshots using these filenames. Do not use sample or fabricated outputs.

1. `screenshots/01-docker-version.png` — Docker version output.
2. `screenshots/02-docker-service.png` — Docker service showing `active (running)`.
3. `screenshots/03-hello-world.png` — successful `hello-world` output.
4. `screenshots/04-docker-images.png` — image commands and output.
5. `screenshots/05-docker-containers.png` — container commands and output.
6. `screenshots/06-docker-volumes.png` — volume commands and persistence test.
7. `screenshots/07-docker-networks.png` — network list/create/inspect/remove output.

## Submission Checklist
- [ ] Commands were run on EC2 and outputs were checked.
- [ ] Screenshots are real, readable outputs from my environment.
- [ ] All seven screenshots have been added.
- [ ] No credentials, private keys, tokens, passwords, or confidential information are included.
- [ ] Repository URL has been submitted in the assessment portal.

## Conclusion
This practical demonstrates Docker installation on AWS EC2 and basic management of images, containers, volumes, and networks.
