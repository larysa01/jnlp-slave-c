FROM jenkins/jnlp-slave
USER root
RUN apk
RUN  apt-get update &&  apt-get install  -y \
    gcc \
    g++ \
    make \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 


ENTRYPOINT ["jenkins-slave"]