FROM ubuntu:26.04

ARG SUDO_PASSWD="docker"
ENV runtime=docker
ENV sudo_passwd=${SUDO_PASSWD}
USER root

RUN apt-get update && \
      apt-get -y install sudo passwd ghostty git

RUN useradd -m -s /bin/bash docker && \
    echo "${SUDO_PASSWD}:${SUDO_PASSWD}" | chpasswd && \
    usermod -aG sudo docker

USER docker
WORKDIR /home/docker/
# For docker development its better to just copy the files
COPY --chown=docker:docker . .zsh/ZSH-Config 

WORKDIR /home/docker/.zsh/ZSH-Config

WORKDIR /home/docker/
ENTRYPOINT [ ".zsh/ZSH-Config/install.sh" ]


