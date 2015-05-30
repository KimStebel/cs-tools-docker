# Version: 0.1.1
FROM ubuntu:15.04
MAINTAINER Kim Stebel "kim.stebel@gmail.com"
RUN echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --force-yes sbt git ca-certificates-java
RUN update-ca-certificates -f
RUN git clone 'https://github.com/KimStebel/couchsurfing-tools.git'
RUN cd couchsurfing-tools; sbt compile

