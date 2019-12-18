FROM centos:7

MAINTAINER Ashim Ranjitkar <ashiim@gmail.com>

#USER root

RUN yum update && \
    yum install -y httpd && \
    yum clean all -y && \
    ps -ef && \
    echo "centos is up.."
