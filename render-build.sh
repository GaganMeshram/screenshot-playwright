#!/bin/bash
apt-get update
apt-get install -y \
  chromium \
  libnss3 \
  libxss1 \
  libasound2 \
  fonts-liberation \
  libappindicator3-1 \
  xdg-utils \
  lsb-release \
  libgbm-dev
npm install
