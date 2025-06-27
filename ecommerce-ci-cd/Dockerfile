# Use a lightweight web server image
FROM nginx:alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy our app content into nginx's public directory
COPY app/ /usr/share/nginx/html

# Expose port 80 (standard HTTP port)
EXPOSE 80

# Start nginx server (default CMD for nginx:alpine already does this)
