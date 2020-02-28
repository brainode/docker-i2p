FROM openjdk:11

COPY ./i2p/ /opt/i2p/
#COPY run.sh /opt/i2p/run.sh

WORKDIR /

VOLUME /opt/i2p

EXPOSE 7647 7657 4445 
#https://geti2p.net/uk/docs/ports
CMD /opt/i2p/runplain.sh