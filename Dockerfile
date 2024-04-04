# Use the httpd:2.4 base image
FROM httpd:2.4

# Copy the contents of ./public-html/ to the Apache document root
COPY ./public-html/ /usr/local/apache2/htdocs/

# Expose port 80 to enable communication with the container
EXPOSE 80

# Set the default command to start Apache when the container starts
CMD ["httpd-foreground"]
