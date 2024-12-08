#!/bin/bash

# Update the system and install Chromium and necessary dependencies
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

# Install the Playwright browsers
npx playwright install --with-deps

# Install the Node.js dependencies (after ensuring browsers are installed)
npm install
