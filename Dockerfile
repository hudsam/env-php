# Menggunakan image centos 7 dari Docker Hub
FROM centos:7

# Memasang paket httpd dan php versi 7.4
RUN yum install -y httpd \
 && yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
 && yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm \
 && yum-config-manager --enable remi-php74 \
 && yum install -y php \
 && php -v

# Menyalin file ke directory root
COPY . /var/www/html/

# Menjalankan layanan httpd
EXPOSE 80/tcp
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
