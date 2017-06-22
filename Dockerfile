# FROM debian
FROM centos:6

# RUN apt update && apt install -y curl supervisor
RUN yum update -y && yum install -y vixie-cron

RUN touch /var/log/cron

RUN curl http://downloads.drone.io/drone-cli/drone_linux_amd64.tar.gz | tar zx
RUN install -t /usr/local/bin drone

# CMD ["supervisord"]
CMD service crond start && tail -f /var/log/cron