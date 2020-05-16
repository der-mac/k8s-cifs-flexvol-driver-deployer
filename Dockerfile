FROM bash:latest

LABEL maintainer="Martin Schneider"

COPY src /

RUN chmod +x /cifs /deploy.sh

CMD "/deploy.sh"
