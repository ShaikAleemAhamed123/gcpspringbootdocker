# Use an appropriate base image with JDK 17
FROM openjdk:17

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set working directory
WORKDIR /app

# Copy the project files to the container
COPY . .

# Run Maven to build the project
RUN mvn clean package
