from jenkins/jenkins:latest

USER root
RUN apt update && apt install -y python ansible busybox ldap-utils

USER jenkins
CMD ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
