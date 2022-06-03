# Use base image for NodeJS
FROM node:18-alpine

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

# Install dependencies.
RUN npm ci --omit=dev

# Start the Express app
CMD ["node", "server.js"]