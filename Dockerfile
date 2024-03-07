# Use a lightweight Node.js image as the base
FROM node:14-alpine AS build

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY ./app ./

# Expose port 3000 (optional)
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
