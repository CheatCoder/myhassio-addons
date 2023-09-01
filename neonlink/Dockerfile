FROM alexscifier/neonlink:v1.4.8

LABEL \
  io.hass.type="addon" \
  io.hass.arch="armhf|aarch64|i386|amd64"

WORKDIR /app/client

RUN npm install --arch=arm64 --platform=linuxmusl sharp

RUN npm run build

WORKDIR /app/server

RUN npm install --arch=arm64 --platform=linuxmusl sharp

RUN npm run build
