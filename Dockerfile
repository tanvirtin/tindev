FROM ubuntu:20.04

RUN apt-get update; apt-get upgrade -y; apt-get install git -y
RUN git clone https://github.com/tanvirtin/dotfiles.git
RUN adduser --disabled-password --gecos '' dev

ENV LANG C.UTF-8
ENV TERM xterm

WORKDIR /dotfiles

RUN ./install.sh

USER dev

RUN ./configure.sh

WORKDIR /workspace

CMD ["zsh"]
