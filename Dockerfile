#escape=`
ARG  BUILS_VERSION=0.1
FROM ubuntu:latest AS app_build1
WORKDIR /root/testing
RUN  apt-get update  -y
RUN  apt-get upgrade -y
RUN  apt-get install curl apache2 -y
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
#CMD [ "start" ]
