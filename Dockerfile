FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y upgrade

EXPOSE 8000
