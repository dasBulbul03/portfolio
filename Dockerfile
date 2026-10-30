# Multi-stage lightweight Nginx container for static portfolio
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy static assets to nginx html directory
COPY index.html /usr/share/nginx/html/

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
