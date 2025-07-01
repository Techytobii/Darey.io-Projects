# Use the official Node.js 18 image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy only package files first for layer caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port your app listens on (80)
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
