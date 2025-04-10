# FROM almalinux:8

# MAINTAINER vikash@gmail.com

# # Install required packages
# RUN yum -y update && \
#     yum -y install java httpd zip unzip && \
#     yum clean all

# # Create working directory
# WORKDIR /var/www/html/

# # Download and unzip the template
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/

# RUN unzip -q photogenic.zip && \
#     cp -rvf photogenic/* . && \
#     rm -rf photogenic photogenic.zip

# # Expose HTTP port
# EXPOSE 80

# # Start Apache web server in foreground
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]









# FROM almalinux:8

# MAINTAINER naveen@gmail.com

# # Install required packages
# RUN yum -y update && \
#     yum -y install git httpd && \
#     yum clean all

# # Set working directory
# WORKDIR /var/www/html/

# # Clone your portfolio project from GitHub
# RUN git clone https://github.com/NaveenMadipalli/portfolio.git /var/www/html/

# # Set permissions (optional)
# RUN chmod -R 755 /var/www/html/

# # Expose Apache's default port
# EXPOSE 80

# # Start Apache in foreground
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]





# # Use Apache HTTPD as base image
# FROM httpd:latest

# # Install git to clone the repository
# RUN apt-get update && \
#     apt-get install -y git && \
#     rm -rf /var/lib/apt/lists/*

# # Clone your portfolio GitHub repo into a temporary directory
# RUN git clone https://github.com/NaveenMadipalli/portfolio.git /tmp/portfolio

# # Copy portfolio files into Apache's root directory
# RUN cp -r /tmp/portfolio/* /usr/local/apache2/htdocs/

# # Expose Apache default port
# EXPOSE 80

# # Start Apache service (already set by base image)



# Use Apache HTTPD as base image
FROM httpd:2.4

# Install git to clone from another GitHub repo
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Clone your actual portfolio repo into a temporary location
RUN git clone https://github.com/NaveenMadipalli/portfolio.git /tmp/portfolio

# Clear default Apache files
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy the portfolio contents into the Apache web root
RUN cp -r /tmp/portfolio/* /usr/local/apache2/htdocs/

# Expose Apache's default port
EXPOSE 80









