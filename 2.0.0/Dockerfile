# Pull base image.
FROM centos:7

MAINTAINER Phillipp Ohlandt, DeepstreamIO

RUN yum install -y wget

RUN wget https://bintray.com/deepstreamio/rpm/rpm -O /etc/yum.repos.d/bintray-deepstreamio-rpm.repo

RUN yum install -y deepstream.io-2.0.0-1

# Define default command.
CMD [ "deepstream" ]

# Expose ports

# HTTP Port
EXPOSE 6020
