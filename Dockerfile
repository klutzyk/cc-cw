# Node v 12
from node:12

# Directory for the application
workdir /usr/src/app

copy . .

# Install dependencies
run npm install

# Expose prot 3000 from the container
expose 3000

# Run te application
cmd [ "node", "index.js" ]