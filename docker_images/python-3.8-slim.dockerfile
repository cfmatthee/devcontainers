FROM python:3.8-slim

ARG USERNAME=docker

RUN apt update -y && apt install -y git sudo

RUN groupadd --gid 1000 $USERNAME && useradd -s /bin/bash --uid 1000 --gid 1000 -m $USERNAME
RUN echo "Defaults  lecture = never" > /etc/sudoers.d/$USERNAME
RUN echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/$USERNAME
RUN chmod 0440 /etc/sudoers.d/$USERNAME
USER $USERNAME:$USERNAME
WORKDIR /python
