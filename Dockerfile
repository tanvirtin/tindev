FROM ubuntu:20.04

RUN apt-get update; apt-get upgrade -y; apt-get install git -y; apt-get install sudo -y
RUN git clone https://github.com/tanvirtin/dotfiles.git
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

ENV LANG C.UTF-8
ENV TERM xterm

WORKDIR /dotfiles

RUN ./install.sh

USER docker

RUN ./configure.sh

WORKDIR /workspace

CMD ["zsh"]
