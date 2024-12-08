#!/bin/bash

# Update the package list
apt-get update

# Install system dependencies required by Playwright
apt-get install -y \
  libnss3 \
  libxss1 \
  libasound2 \
  fonts-liberation \
  libappindicator3-1 \
  xdg-utils \
  lsb-release \
  libgbm-dev \
  wget \
  ca-certificates

# Install Playwright browsers and dependencies
npx playwright install --with-deps
