FROM ubuntu:14.04

# base packages
RUN apt-get update && \
    apt-get -y --quiet upgrade && \
    apt-get -y clean


#base dir
RUN mkdir /config /data

ADD config /config

RUN chmod -R +x /config

# default command
CMD /config/starter.sh