FROM ubuntu:14.04

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get -yq install vim --no-install-recommends
RUN rm -rf /var/lib/apt/lists/*

CMD ["tail", "-f", "/dev/null"]

