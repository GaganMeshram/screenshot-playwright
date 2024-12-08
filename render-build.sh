#!/bin/bash

# Update and install Chromium and other required dependencies
apt-get update
apt-get install -y \
  chromium-browser \
  libnss3 \
  libxss1 \
  libasound2 \
  fonts-liberation \
  libappindicator3-1 \
  xdg-utils \
  lsb-release \
  libgbm-dev

# Install Playwright browsers
npx playwright install

# Install Node.js dependencies
npm install
