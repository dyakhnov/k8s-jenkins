FROM jenkins/jenkins:2.179-alpine

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

USER root
RUN apk add --update sudo
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/default
RUN chmod 0440 /etc/sudoers.d/default
USER jenkins

COPY *.groovy /usr/share/jenkins/ref/init.groovy.d/
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
