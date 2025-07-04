# 📦 Use official Node.js 18 slim image (latest patch, smaller surface)
FROM node:18-slim

# 🗂️ Set working directory inside container
WORKDIR /app

# 📄 Copy dependency manifests first (to leverage layer caching)
COPY package.json package-lock.json* ./

# 🔧 Install OS updates, minimal tools & production dependencies
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    npm ci --only=production

# 📝 Copy application source code
COPY . .

# 👤 Create and switch to a non-root user for security
RUN useradd --create-home --shell /bin/bash appuser
USER appuser

# 🚪 Expose the port your app will listen on
EXPOSE 3000

# 🚀 Default container command
CMD ["node", "index.js"]
