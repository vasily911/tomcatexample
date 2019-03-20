FROM ubuntu:16.04
MAINTAINER Peter
RUN apt-get install
RUN cd /
ADD jdk-8u192-linux-x64.tar.gz /
ADD apache-tomcat-9.0.16.tar.gz /
ENV JAVA_HOME=/jdk1.8.0_192
ENV PATH=$PATH:/jdk1.8.0_192/bin
WORKDIR /usr/local/docker-test/apache-tomcat-9.0.16
CMD ["/apache-tomcat-9.0.16/bin/catalina.sh", "run"]








































