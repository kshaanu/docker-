From ubuntu:latest
run apt-get update
cmd ["/bin/bash"]





FROM ubuntu:16.04
RUN apt-get update && mkdir test && cd test
COPY file  /test/
VOLUME /file /var/lib/docker
ENTRYPOINT ["cat","file"]
CMD ["ping","google.com"]
