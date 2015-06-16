################################################################################
# This is a data-only container where all the app files will be stored.
# 
# Replace: /path/to/local 
# with the location of the data files you want this container to access 
#
# Replace: /path/on/container
# with the location of your data files in your container
# 
# Run it:
# 		docker run --name bootstrap-data -v /path/to/local:/path/on/container:rw benmag/bootstrap-data
#
# 
#
# Build it (if you've made changes to this Dockerfile):
#		docker build -t benmag/bootstrap-data .
################################################################################
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
