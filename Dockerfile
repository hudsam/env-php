# Get image centos 7 from Docker Hub
FROM centos:7

# Install httpd packages for web server and php version of 7.4 to process data
RUN yum install -y httpd \
 && yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
 && yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
 && yum-config-manager --enable remi-php74 \
 && yum install -y php \
 && php -v

# Copy *.php files to directory root web server
COPY index.php /var/www/html/index.php
COPY phpinfo.php /var/www/html/phpinfo.php

# Run httpd.service
EXPOSE 80/tcp
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
