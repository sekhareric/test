FROM java:8
USER root
RUN mkdir /opt/ignate
WORKDIR /opt/ignate
RUN apt-get install wget -y \ &&
    apt-get install unzip -y
RUN wget https://archive.apache.org/dist/ignite/2.8.0/apache-ignite-2.8.0-src.zip
RUN unzip apache-ignite-2.8.0-src.zip
RUN mv apache-ignite-2.8.0-src apache-ignite
RUN rm -rf apache-ignite-2.8.0-src.zip
