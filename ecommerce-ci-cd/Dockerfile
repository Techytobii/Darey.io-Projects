# Use a lightweight web server image
FROM nginx:alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy our app content into nginx's public directory
COPY app/ /usr/share/nginx/html

# Expose port 80 (standard HTTP port)
EXPOSE 80

# (Optional) Healthcheck for Nginx
# HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost/ || exit 1
