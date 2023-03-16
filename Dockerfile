# Use the official Node.js 14 image as the base image
FROM node:14-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port that the application listens on
EXPOSE 3000

# Set the command to run the application
CMD [ "node", "examples/hello-world/index.js" ]
