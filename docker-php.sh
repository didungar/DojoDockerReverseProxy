#!/bin/bash

docker pull php
echo "<?php echo date('c');" > index.php
docker run -d -p 80:80 --name my-apache-php-app -v "$PWD":/var/www/html php:7.2-apache

# docker rm my-apache-php-app

