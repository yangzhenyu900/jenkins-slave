FROM ubuntu

ENV JAVA_HOME /usr/local/jdk
ENV PATH=${JAVA_HOME}/bin:/usr/local/maven/bin:$PATH

RUN apt-get update && \
    apt-get install -y curl git libltdl-dev && \ 
    apt-get clean all && \ 
    rm -rf /var/lib/apt && \
    mkdir -p /usr/share/jenkins
