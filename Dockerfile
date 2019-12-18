FROM centos:7

MAINTAINER Ashim Ranjitkar <ashiim@gmail.com>

#USER root

RUN yum --disablerepo=* --enablerepo="rhel-7-server-rpms" && \
    yum update && \
    yum install -y httpd && \
    yum clean all -y
    
RUN echo "centos is up.."
