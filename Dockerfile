FROM ubuntu:trusty

MAINTAINER Ben Maggacis, ben.maggacis@qut.edu.au

# Install default software for this container 
RUN apt-get update && \
  apt-get -y install supervisor git nano

# www-data needs to be able to write 
RUN usermod -u 1000 www-data

# Mount volumes
VOLUME /app

CMD ["true"]
