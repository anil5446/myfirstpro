FROM centos:latest
RUN yum install -y httpd zip unzip
ADD https://www.free.css.com/assets/files/free-css-templates/download/page269/bonativo.zip /var/www/html
WORKDIR /var/www/html
RUN unzip bonativo.zip
RUN rm-rf  bonativo.zip &&\
    cp-cf bonativo/* &&\
    rm-rf bonativo
 EXPOSE 80
 CMD ["/usr/sbin/httpd" , "-D" "FOREGROUND"]
