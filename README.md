# Django-Docker-LetsEncrypt-Nginx configuration

A straightforward production-ready Docker Nginx configuration with SSL (LetsEncrypt) and HTTP/2 enabled for Django/Wagtail projects.

Inspired from [nginx-certbot](https://github.com/wmnnd/nginx-certbot) by [@wmnnd](https://github.com/wmnnd)


For example purpose, the project name is given as `DJANGO_PROJECT` and the domain name is `example.com`

## Requirements

Docker (Preferably the latest version) pre-installed in the system.

## Quickstart

### 1. Django project


   Create a Django project and build your docker container.
   

   For more instructions, please take a look at this [README](django/README.md) file.
   
   Please keep in mind that the Django project does not need to reside in this exact directory, it is given for the sake of an example.

### 2. Nginx configurations

   A basic configuration file  `example.com.conf` is given in the configs folder. You can define as many configurations as you can. For more info, please take a look at this [README](configs/README.md) file.

### 3. Generating the SSL certificates using certbot

   The script for generating the certificates for your domain is defined in `cert.sh` file. 
   
   You may only need to make two changes in the script file. The domain name and your contact email address.

#### IMPORTANT:

   1. It is important to note that this file is needed to be executed only once - because the auto-renewal of the certificates will be handled by the script itself. So you don't need to worry about domain expiration or executing the script again in the future.
   
   2. Change the domain name from `example.com` to `your_domain_name.com`
   
   3. Change the email address from `YOUR_EMAIL_ADDRESS` to `your_email_address@example.com`
   
   4. Finally the variable `staging` is declared as 1 - which means that for testing purposes, you can generate demo certificates - which is not ideal in the production environment. So for creating the production-level certificates, you need to change it to 0.
   
   5. Finally, make the script executable and run it to generate the certificates and restart the Nginx service defined in the docker-compose file.