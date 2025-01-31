# Use Nginx to serve the static files
FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]