FROM jenkins/jenkins:lts-centos

USER root

RUN yum install -y yum-utils device-mapper-persistent-data lvm2
RUN yum config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
RUN yum install --nobest -y docker-ce docker-ce-cli containerd.io

RUN groupadd -g 412 docker-gcp
RUN usermod -aG docker jenkins
RUN usermod -aG docker-gcp jenkins

USER jenkins
