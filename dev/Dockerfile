FROM ubuntu:26.04

ARG SUDO_PASSWD="docker"
ENV runtime=docker
ENV sudo_passwd=${SUDO_PASSWD}
USER root

RUN apt-get update && \
      apt-get -y install sudo passwd ghostty

RUN useradd -m -s /bin/bash docker && \
    echo "${SUDO_PASSWD}:${SUDO_PASSWD}" | chpasswd && \
    usermod -aG sudo docker

WORKDIR /home/docker/
COPY . .zsh/ZSH-Config

USER docker

ENTRYPOINT [ ".zsh/ZSH-Config/install-shell.sh" ]


