FROM node:25-bullseye

# Set working directory first
WORKDIR /app

# Copy package files and install dependencies
COPY package.json ./
RUN npm install

# Copy src folder
COPY src ./src

# Expose port (optional, good practice)
EXPOSE 3000

# Start the server
CMD ["node", "src/server.js"]
