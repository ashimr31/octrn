FROM docker.io/richxsl/rhel7

MAINTAINER Ashim Ranjitkar <ashiim@gmail.com>



RUN   yum install -y --setopt=tsflags=nodocs --noplugins httpd &&  
      yum clean all --noplugins -y && 
      echo "Hello from the httpd-parent container!" > ${HOME}/index.html

# Allows child images to inject their own content into DocumentRoot
# ONBUILD COPY src/ ${DOCROOT}/ 

EXPOSE 80
