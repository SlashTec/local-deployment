# Version 1.0.0
FROM ubuntu:16.04
MAINTAINER bash


RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y aptitude sudo openssh-server python2.7
RUN ln -sf /usr/bin/python2.7 /usr/bin/python

RUN mkdir /var/run/sshd
RUN echo 'root:bashar123' | chpasswd
RUN sed -i 's/prohibit-password/yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN echo "export VISIBLE=now" >> /etc/profile

ADD hello-dropwizard /tmp/hello-dropwizard
WORKDIR /tmp/hello-dropwizard

EXPOSE 22 8080
CMD ["/usr/sbin/sshd", "-D"]
