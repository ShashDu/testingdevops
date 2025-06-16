FROM nginx:alpine

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to the Nginx document root
COPY . /usr/share/nginx/html

# Optional: Expose the Nginx web server port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]