FROM ubuntu:latest

# Install yaml lint
RUN apt update
RUN apt-get install -y yamllint

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
