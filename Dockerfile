# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json /usr/app/

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . /usr/app/

# Expose the port your web application listens on
EXPOSE 30


# Specify the command to run your web application using Node.js
CMD ["node", "index.js"]

