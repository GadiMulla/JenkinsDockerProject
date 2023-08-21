FROM ubuntu:latest
RUN chmod +x /docker_sleep.sh
CMD ["/docker_sleep.sh"]
