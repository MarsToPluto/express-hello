# Use official Node.js image from Docker Hub
FROM node:latest

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from current directory to working directory inside the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run your application
CMD ["node", "app.js"]
