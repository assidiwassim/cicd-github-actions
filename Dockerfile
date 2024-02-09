# Use an official Node.js runtime as the base image
FROM --platform=linux/amd64 node:latest 

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
# COPY SOURCE DESTINATION
COPY . .

# Expose the port on which your Node.js application will run
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
