FROM ubuntu:26.04

ARG SUDO_PASSWD="docker"

RUN apt-get update && \
      apt-get -y install sudo passwd

RUN useradd -m -s /bin/bash docker && \
    echo "${SUDO_PASSWD}:${SUDO_PASSWD}" | chpasswd && \
    usermod -aG sudo docker && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /etc/shell 
COPY install-shell.sh  .
COPY defaults.sh .

USER docker

ENTRYPOINT [ "/etc/shell/install-shell.sh" ]


