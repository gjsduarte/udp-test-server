# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

ADD udplistener.py /udplistener.py

ENV UDPPORT 8125
CMD [ "python3", "-u" , "/udplistener.py"]

EXPOSE ${UDPPORT}
EXPOSE ${UDPPORT}/udp
