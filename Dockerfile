FROM jenkins/jenkins:lts
USER root
RUN  yum update && \
yum install yum-utils device-mapper-persistent-data lvm2 \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo\
    curl \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; 
echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
yum update && \
yum install docker-ce -y
RUN yum install docker-ce
RUN usermod -aG docker  jenkins
USER jenkins
