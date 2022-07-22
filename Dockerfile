FROM centos:latest
MAINTAINER kartickumar04@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://miro.medium.com/max/1364/0*2ui893KAwAT_F9wz.gif /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/*
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"
EXPOSE 80
