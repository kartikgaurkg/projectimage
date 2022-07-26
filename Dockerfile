FROM centos:latest
MAINTAINER kartickumar04@gmail.com
RUN yum install -y httpd
COPY /index.html /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
