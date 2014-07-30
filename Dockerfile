FROM phusion/baseimage:0.9.11
MAINTAINER vlefevre86 <vlefevre86@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

# Set correct environment variables
ENV HOME /root

RUN usermod -u 99 nobody && \
    usermod -g 100 nobody

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

RUN apt-get update -q

# Install Dependencies
RUN apt-get install -qy python-pip python-dev

# Config path
VOLUME /config

# Expose port
EXPOSE 8035

# Install GMusicProxy
sudo pip install --allow-external eyed3 --allow-unverified eyed3 https://github.com/diraimondo/gmusicproxy/tarball/master

# Add GMusicProxy to runit
RUN mkdir /etc/service/gmusicproxy
ADD gmusicproxy.sh /etc/service/gmusicproxy/run
RUN chmod +x /etc/service/gmusicproxy/run