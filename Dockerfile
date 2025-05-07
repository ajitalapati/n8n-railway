# Use the official n8n image as a base
FROM n8nio/n8n:latest

# Set the working directory inside the container
WORKDIR /home/node

# Set the environment variable for SQLite persistence
# Use a directory that is persisted between deployments
ENV N8N_DATABASE_SQLITE_FILE=/mnt/data/n8n.sqlite

# Expose the n8n UI port
EXPOSE 5678

# Run n8n with the necessary settings
CMD ["n8n"]
