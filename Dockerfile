# Use the official Node.js 18 slim image
FROM node:18-slim@sha256:1e2b3e6e6c2b8e2e4b8e7e2e4b8e7e2e4b8e7e2e4b8e7e2e4b8e7e2e4b8e7e2e

# Set working directory
WORKDIR /app

# Install dependencies first (with layer caching)
COPY package.json package-lock.json* ./

# Install production dependencies and update OS packages in one layer
RUN npm ci --only=production && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy application code (after deps for cache efficiency)
COPY . .

# Create and use a non-root user
RUN useradd -m appuser
USER appuser

# Expose the port your app listens on
EXPOSE 3000

# Define default command
CMD ["node", "index.js"]
