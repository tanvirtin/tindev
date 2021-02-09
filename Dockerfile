FROM ubuntu:20.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install sudo -y
RUN apt-get install build-essential -y
RUN adduser --disabled-password --gecos '' tindev
RUN adduser tindev sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN git clone https://github.com/tanvirtin/dotfiles.git

ENV LANG C.UTF-8
ENV TERM xterm

WORKDIR /dotfiles

RUN ./install.sh

USER tindev

RUN ./configure.sh

WORKDIR /workspace

CMD ["zsh"]
