# Use the node:lts-alpine image as the base image
FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the server will run on
EXPOSE 7000

# Define the command to run the server
CMD ["npm","run" ,"server"]