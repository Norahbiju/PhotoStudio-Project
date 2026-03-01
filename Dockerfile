# Use official Node.js LTS version
FROM node:20

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project
COPY . .

# Expose port 3000 (assuming your app runs on this port)
EXPOSE 3000

# Set environment variable file
ENV NODE_ENV=production

# Start the app
CMD ["node", "server.js"]
