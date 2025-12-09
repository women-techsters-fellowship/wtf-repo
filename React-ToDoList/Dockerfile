# Stage 1: Build
FROM node:22.21.0-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the backend code
COPY . .

# Expose the port your backend uses
EXPOSE 5000

# Start the server
CMD ["node", "server.js"]
