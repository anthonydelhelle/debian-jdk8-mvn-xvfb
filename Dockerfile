FROM debian:stable-slim

# update package
RUN apt-get -y update

# install xvfb
RUN apt-get -y install xvfb

# install maven
RUN apt-get -y install maven

# install jdk-8
RUN apt-get -y install apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get update
RUN apt-get -y install adoptopenjdk-8-hotspot
