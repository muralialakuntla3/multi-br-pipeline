# Login Page Application

# Use Caddy as the base image
FROM caddy:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the web application files into the container
COPY ./sample-web-app/ .

# Expose port 80 (HTTP) and 443 (HTTPS)
EXPOSE 80
EXPOSE 443

# Start Caddy with the Caddyfile included in the web application directory
CMD ["caddy", "run", "--config", "/usr/src/app/Caddyfile"]
