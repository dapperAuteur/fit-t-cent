# Use a base image
FROM your-base-image

# Set environment variables
ENV PORT=8080

# Expose required ports (this is optional; helps with documentation)
EXPOSE 8080 8000 8081

# Copy necessary files into the container
COPY . /app

# Set working directory
WORKDIR /app

# Install dependencies (if required)
RUN yarn install

# Use a startup script to handle dynamic port binding
COPY ./startup.sh /app/startup.sh
RUN chmod +x /app/startup.sh

# Start the service with the startup script
CMD ["/app/startup.sh"]
