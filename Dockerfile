from jenkins/jenkins:latest

USER root
RUN apt update && apt install -y python && apt install -y ansible && apt install -y busybox && apt install -y ldap-utils

USER jenkins
CMD ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
