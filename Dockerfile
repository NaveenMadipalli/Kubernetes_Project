FROM almalinux:8

MAINTAINER vikash@gmail.com

# Install required packages
RUN yum -y update && \
    yum -y install java httpd zip unzip && \
    yum clean all

# Create working directory
WORKDIR /var/www/html/

# Download and unzip the template
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

RUN unzip -q photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

# Expose HTTP port
EXPOSE 80

# Start Apache web server in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
