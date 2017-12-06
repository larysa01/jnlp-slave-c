FROM jenkins/jnlp-slave

RUN apk add gcc==5.3.0-r0 -U

ENTRYPOINT ["jenkins-slave"]