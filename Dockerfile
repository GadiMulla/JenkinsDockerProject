FROM ubuntu:latest

COPY docker_check.sh /

RUN chmod +x /docker_check.sh

CMD ["/docker_check.sh"]


