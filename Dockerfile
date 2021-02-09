FROM centos:7.9.2009
RUN yum -y install gcc
WORKDIR /app
COPY src /app