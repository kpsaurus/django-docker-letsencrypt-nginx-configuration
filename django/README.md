## About

Your Django project code will reside here. Create your own Django project and make changes to the Dockerfile and docker-compose file if necessary.

## Dockerfile

A basic Dockerfile for the Django project. The image itself is based on the Debian Buster and if you want to try out a different flavor such as Alpine, you are free to do so.

## docker-compose.yml

The service name is defined as `webapp`. This can be changed, however, this service name is also referred to in [Nginx configuration file](../configs/example.com.conf) and the [entrypoint.sh](./entrypoint.sh) file. so if you're making any changes to the name, make sure that you have made the same changes in these files too.

The container name is defined as `DJANGO_PROJECT`. This can be changed to anything since there's no dependency.

#### IMPORTANT:

1. A .env file is mentioned in the compose file. The file itself is not given in this repository - however, you can create a new .env file in this directory and save your credentials before building your container.

2. An external network is defined in the compose file called `supernet`. When you build the container for the first time, you may need to create this network in order to run it.

    ```
    docker network create supernet
    ```

The above points are optional, and if you're not using this, you can remove these configurations from the compose file.


## Building the Docker container

After making the necessary changes, the container can be created via:

```
docker-compose up --build -d
```

Now your Django project will be up and running and can be accessed via the 8000 port.