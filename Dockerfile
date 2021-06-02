FROM ubuntu:18.04

RUN dpkg --add-architecture i386
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    xrdp \
    openbox
    
COPY entrypoint.sh /usr/bin/entrypoint
EXPOSE 3389/tcp
ENTRYPOINT ["/bin/bash"]