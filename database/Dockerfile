# Use the official PostgreSQL image
FROM postgres:latest

# Set environment variables for the database
ENV POSTGRES_DB=nfl_data
ENV POSTGRES_USER=nfl_user
ENV POSTGRES_PASSWORD=nfl_password

# Copy the setup SQL script to the Docker container
COPY setup_database.sql /docker-entrypoint-initdb.d/