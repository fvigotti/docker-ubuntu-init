FROM ubuntu:14.04

# base packages
RUN apt-get update && \
    apt-get -y --quiet upgrade && \
    apt-get -y clean

# default sheel must be bash ( TRAP doesn't seems to work correctly on dash )
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#base dir
RUN mkdir /config /data

ADD config /config

RUN chmod -R +x /config

# default command
CMD /config/starter.sh