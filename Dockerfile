# Login Page Application

# Use Caddy as the base image
FROM caddy:latest

# Copy the web application files into the container
COPY . /usr/share/caddy/

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80
EXPOSE 443

# Restart Caddy
CMD ["caddy", "reload"]
