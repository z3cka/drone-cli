FROM debian

RUN apt update && apt install -y curl
RUN curl http://downloads.drone.io/drone-cli/drone_linux_amd64.tar.gz | tar zx
RUN install -t /usr/local/bin drone