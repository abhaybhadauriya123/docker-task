#!/usr/bin/env bash
# Docker Task: command reference for AWS EC2 Ubuntu.
# Run commands individually so you can inspect and screenshot each result.
# This file is a reference; it is not intended to run all commands automatically.

# Installation and verification
sudo apt update
sudo apt install docker.io -y
sudo systemctl enable --now docker
docker --version
sudo systemctl status docker
sudo docker run hello-world

# Images
sudo docker images
sudo docker pull nginx
sudo docker images
sudo docker image inspect nginx

# Containers
sudo docker run -d --name docker-task-nginx -p 8081:80 nginx
sudo docker ps
sudo docker ps -a
sudo docker logs docker-task-nginx
sudo docker inspect docker-task-nginx
curl http://localhost:8081
sudo docker stop docker-task-nginx

# Volumes
sudo docker volume create task-volume
sudo docker volume ls
sudo docker volume inspect task-volume
sudo docker run --rm -v task-volume:/data busybox sh -c "echo Docker volume test > /data/test.txt"
sudo docker run --rm -v task-volume:/data busybox cat /data/test.txt

# Networks
sudo docker network ls
sudo docker network create task-network
sudo docker network inspect task-network
sudo docker network rm task-network
