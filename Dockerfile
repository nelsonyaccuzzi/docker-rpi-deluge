FROM arm32v7/debian:bullseye-slim

ARG VERSION

RUN apt update \
 && apt install deluge=$VERSION deluged=$VERSION deluge-web=$VERSION deluge-console=$VERSION -y \
 && rm -rf /var/lib/apt/lists/* \
 && echo "deluged -c /config && deluge-web -c /config -d" > start.sh \
 && chmod +x start.sh

CMD ["sh","./start.sh"]
