# Setup Docker for CS Lab 2 environment

The current CS Lab 2 environment can be checked via:

```
$> rpm -q centos-release
```

The current version of CS Lab 2 is:

```
centos-release-7-9.2009.1.el7.centos.x86_64
```

# CentOS Docker images

[https://hub.docker.com/_/centos](https://hub.docker.com/_/centos)

# Pull the docker image

docker pull centos:7.9.2009

# Customize using Dockerfile

- Create `Dockerfile`

```docker
FROM centos:7.9.2009
RUN yum -y install gcc
WORKDIR /app
COPY src /app
```

- Need to install gcc using `yum`


# Build the container image

```
docker build --rm -t local/c7 .
```

# Run
- Choose local/c7 image and run 
- Open cli for the local/c7 container

# Expected result
```
sh-4.2# pwd
/app

sh-4.2# ls
hello.c

sh-4.2# gcc -o hello hello.c

sh-4.2# ./hello
Hello World!

sh-4.2# gcc --version
gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-44)
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```
