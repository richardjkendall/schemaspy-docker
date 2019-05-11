FROM ubuntu:18.04

# install graphviz
RUN apt-get update
RUN apt-get install -y graphviz wget

# install coretto
RUN wget https://d3pxv6yz143wms.cloudfront.net/8.212.04.2/java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb
RUN apt-get install -y java-common
RUN dpkg --install java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb

# copy in jars
RUN mkdir -p /opt
COPY schemaspy-6.0.0.jar /opt
COPY sqlite-jdbc-3.23.1.jar /opt

# copy bootstrap script
COPY start.sh /opt

CMD ["sh", "/opt/start.sh"]


