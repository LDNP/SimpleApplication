#!/usr/bin/env bash

# Update system & install dependencies
sudo apt update && sudo apt install -y nodejs npm

# Install PM2 globally
sudo npm install -g pm2

# Stop any running instance of the application
pm2 stop SimpleApplication

# Navigate to the application directory
cd SimpleApplication/

# Install dependencies
npm install

# Start the application with PM2
pm2 start ./bin/www --name SimpleApplication
