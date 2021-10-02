FROM ubuntu:18.04

WORKDIR /app

COPY racxa.sh . 

RUN apt-get update && apt-get install docker.io -y && apt-get install -y git

RUN chmod +x racxa.sh

ENTRYPOINT ["bash","./racxa.sh"]