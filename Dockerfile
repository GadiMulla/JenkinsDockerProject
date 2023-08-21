FROM ubuntu:latest

RUN chmod +x /docker_check.sh

CMD ["/docker_check.sh"]


