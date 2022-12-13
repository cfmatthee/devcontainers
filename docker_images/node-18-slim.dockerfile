FROM node:18-slim

RUN apt update -y && apt install -y git sudo

RUN echo "Defaults  lecture = never" > /etc/sudoers.d/node
RUN echo "node ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/node
RUN chmod 0440 /etc/sudoers.d/node
USER node:node
WORKDIR /app
