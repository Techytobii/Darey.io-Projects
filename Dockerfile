# Use the official Node.js 18 slim image (latest patch) for fewer vulnerabilities
FROM node:18-slim

# Set working directory
WORKDIR /app

# Install dependencies first (with layer caching)
COPY package.json package-lock.json* ./

# Install production dependencies and update OS packages in one layer
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    npm ci --only=production

# Copy application code (after deps for cache efficiency)
COPY . .

# Create and use a non-root user
RUN useradd -m -s /bin/bash appuser
USER appuser

# Expose the port your app listens on
EXPOSE 3000

# Define default command
CMD ["node", "index.js"]
