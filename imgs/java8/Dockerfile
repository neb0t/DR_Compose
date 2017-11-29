FROM centos
MAINTAINER neb0t, neb0t@yahoo.com

ENV JAVA_VERSION 8u151
ENV BUILD_VERSION b12

# Upgrading system
RUN yum -y upgrade
RUN yum -y install wget

# Downloading Java
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/e758a0de34e24606bca991d704f6dcbf/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm

RUN yum -y install /tmp/jdk-8-linux-x64.rpm
RUN rm -rf /tmp/*.rpm

COPY app/ /app/

RUN chmod +x /app/scripts/*

EXPOSE 8080

CMD ["/app/scripts/entrypoint.sh"]
