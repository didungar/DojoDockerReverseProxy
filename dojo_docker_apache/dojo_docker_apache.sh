#!/bin/bash
docker build . -t dojo_docker_apache
docker run -it --rm --name dojo_docker_apache php
docker run -d --name dojo_docker_apache dojo_docker_apache
docker stop dojo_docker_apache
docker rm dojo_docker_apache
docker run -d -p 80:80 --name dojo_docker_apache -v "$PWD":/var/www/html dojo_docker_apache

