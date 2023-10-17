# Sick Cat Dog API

This API returns and logs images of cool cats and dogs. This app is vulnerable by design as a SCA exercise

## Use Docker

```bash
docker build -t sick-cat-dog-api:latest .
docker run -d -p 3000:3000 sick-cat-dog-api:latest
```


## Use NPM

### Install dependencies

```bash
$ npm install 
```

### Run app

```bash
$ npm run start 
```

## SCA

- Add package-lock.json

    ```bash
    docker run --rm -v .:/app -w /app node:18.18.2-alpine3.18 npm install
    ```

- Build image

    ```bash
    docker build -t sick-cat-dog-api:latest .
    ```

- Run Trivy

    ```bash
    docker run --rm -v //var/run/docker.sock:/var/run/docker.sock aquasec/trivy:latest image api-dog-cat:latest
    ```
