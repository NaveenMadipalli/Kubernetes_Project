# Base Image
FROM almalinux:8

# Maintainer Info
LABEL maintainer="vikash@gmail.com"

# Fix CentOS repo to use vault for compatibility
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

# Install required packages: Java, Apache, zip, unzip
RUN yum clean all && \
    yum -y install java httpd zip unzip && \
    yum clean all

# Create working directory
WORKDIR /var/www/html/

# Download and unzip the website template
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

# Extract and setup website content
RUN unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

# Expose port 80 for HTTP
EXPOSE 80

# Start Apache HTTP server in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
