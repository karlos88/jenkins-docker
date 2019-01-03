FROM jenkins/jenkins:2.150.1
label maintainer = "my-email@mail@.com"

# Create log space for Jenkins
USER root
RUN mkdir -p /var/log/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
USER jenkins

# Allow Jenkins for more handler connections
ENV JENKINS_OPTS=" --handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log"