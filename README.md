# docker-php

[![Build Status](https://travis-ci.com/mikefrancis/docker-php.svg?branch=master)](https://travis-ci.com/mikefrancis/docker-php)

Just a Docker image containing the bare minimum to run `composer create-project`.

## Usage

```bash
docker run -d -p 8000:8000 -v $(pwd):/var/www/html --name my-app-container mikefrancis/docker-php
docker exec -it my-app-container bash
composer create-project laravel/laravel my-app
cd my-app
php -S 0.0.0.0:8000 -t public
```
