FROM jenkins/jnlp-slave

RUN sudo apt-get update &&  apt-get install  -y \
    gcc \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* 


ENTRYPOINT ["jenkins-slave"]