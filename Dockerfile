# Use the official MongoDB image
FROM mongo:latest

# Copy the startup script into the container
COPY start-mongo.sh start-mongo.sh

# Make the script executable
RUN chmod +x start-mongo.sh

# Expose the MongoDB port
EXPOSE 27017

ENTRYPOINT ["./start-mongo.sh"]
