# Deluge Docker Image for Raspberry Pi [![Build Status](https://travis-ci.org/nelsonyaccuzzi/docker-rpi-deluge.svg?branch=master)](https://travis-ci.org/nelsonyaccuzzi/docker-rpi-deluge)

## Usage

```
docker run -d \
  --name deluge \
  -v /path/to/config:/config \
  -v /path/to/data:/data \
  -p 8112:8112 \
  --restart unless-stopped \
  nelsonyaccuzzi/docker-rpi-deluge

```
