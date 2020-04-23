FROM balenalib/raspberry-pi:bullseye

ARG DELUGE_VERSION=2.0.3-2

RUN apt update && apt install deluge=$DELUGE_VERSION deluged=$DELUGE_VERSION deluge-web=$DELUGE_VERSION deluge-console=$DELUGE_VERSION -y

COPY scripts/startup.sh .

CMD ["./startup.sh"] 
