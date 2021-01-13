# Jenkins
from jenkins/jenkins:2.60.3

# Install kubernetes plugin for jenkins
RUN /usr/local/bin/install-plugins.sh kubernetes

# Node v12 
from node:12

# Directory for the application
workdir /usr/src/app

# Copy everything in current dir to specified loc
copy . .

# Install dependencies
run npm install

# Expose prot 3000 from the container
expose 3000

# Run te application
cmd [ "node", "index.js" ]

