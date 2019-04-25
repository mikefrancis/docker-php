# docker-php

Just a Docker image containing the bare minimum to run `composer create-project`.

## Usage

```bash
docker run -it -d --rm -p 8000:8000 -v $(pwd):/var/www/html mikefrancis/docker-php
docker exec -it $CONTAINER_ID bash
composer create-project laravel/laravel my-app
cd my-app
php -S 0.0.0.0:8000 -t public
```
