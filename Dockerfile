FROM jenkins/jnlp-slave
USER root
RUN  apt-get update &&  apt-get install  -y \
    gcc \
    g++ \
    make \
    oracle \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 


ENTRYPOINT ["jenkins-slave"]
