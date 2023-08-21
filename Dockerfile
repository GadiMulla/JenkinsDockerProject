FROM ubuntu:latest

COPY docker_check.sh /

COPY docker_test.sh /

RUN chmod +x /docker_test.sh

CMD ["/docker_test.sh"]


