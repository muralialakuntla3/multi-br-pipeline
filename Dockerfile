# Login Page Application

# Use Caddy as the base image
FROM caddy:latest

# Set the working directory
WORKDIR /usr/share/caddy

# Copy the web application files into the container
COPY . .

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80
EXPOSE 443

# Start Caddy with the provided Caddyfile
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile"]

