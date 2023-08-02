#Base Os for working
FROM ubuntu

#Dockerfile Maintainer
LABEL email="ankujagtap20@gmail.com"

#Installing nginx on ubuntu
RUN apt update -y && apt install nginx-light -y && apt install systemd -y

#opening port 80
EXPOSE 80

#Starting nginx service
RUN service nginx start
RUN systemctl enable nginx
COPY . /var/www/html
