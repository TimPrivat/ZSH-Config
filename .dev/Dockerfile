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
#COPY --chown=docker:docker . .zsh/ZSH-Config 

RUN mkdir .zsh && \
    git clone https://github.com/TimPrivat/ZSH-Config.git .zsh/ZSH-Config
    
WORKDIR /home/docker/.zsh/ZSH-Config
RUN git checkout  update/10_2026

WORKDIR /home/docker/
ENTRYPOINT [ ".zsh/ZSH-Config/install-shell.sh" ]


