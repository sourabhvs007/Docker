FROM ubuntu:14.04 
RUN apt-get update 
RUN apt-get install apache2 -y 
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
EXPOSE 80 
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"] 
;