FROM ubuntu
MAINTAINER Mark Fernandes <mark.fernandes@ifr.ac.uk>

ENV APP_USER=guest \
  APP_HOME=/home/$APP_USER

USER root

RUN mkdir $APP_HOME $APP_HOME/test && cd $APP_HOME/test
WORKDIR $APP_HOME/test 

ADD Welcome.txt /etc/motd
RUN mkdir /output /scripts
ADD simple.sh /scripts/simple.sh
ADD *.txt $APP_HOME

RUN chmod +x /scripts/simple.sh 

EXPOSE 22

VOLUME $APP_HOME/output

ENTRYPOINT ["/scripts/simple.sh"]
CMD ["/bin/bash"]
