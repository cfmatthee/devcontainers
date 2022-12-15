FROM dev:node-18-slim

RUN sudo apt install -y libwebkit2gtk-4.0-37
ENV DISPLAY=host.docker.internal:0

USER node:node
WORKDIR /app
