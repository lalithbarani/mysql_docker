# Use the official MySQL image from the Docker Hub
FROM mysql:latest

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=javasql
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose the MySQL port
EXPOSE 3306

# Add a custom configuration file if needed (optional)
# COPY my.cnf /etc/mysql/conf.d/my.cnf

# Add an initialization script if needed (optional)
# COPY init.sql /docker-entrypoint-initdb.d/

# Command to run the MySQL server
CMD ["mysqld"]
