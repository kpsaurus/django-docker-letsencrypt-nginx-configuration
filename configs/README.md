## About

This directory contains the Nginx configurations.

## example.com.conf

This is an example Nginx configuration file for your domain `example.com`.

Firstly, an upstream server has been defined in the configuration as `webapp_server` - which points to the `webapp` service running on port 8000. This service name `webapp` can be changed, however, you also need to make the same change in the Django project's [docker compose file](../django/docker-compose.yml) and [entrypoint.sh](../django/entrypoint.sh) file.

Two blocks have been defined for the 80 port as well as the 443 secure port.

You can change the domain name from `example.com` to `your_domain_name.com`. A permanent redirection is also defined so that whenever a user tries to access the non-secure port, Nginx will automatically redirect to the 443 port.

In the 443 port block section, the path to the certificates is given.

### IMPORTANT:

When you try to execute the shell script for the first time to generate the certificates, the certificates will be generated in the `example.com` folder under `certbot` directory. So you may need to change the name `example.com` in the path string.