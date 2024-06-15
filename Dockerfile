# Use Maven to build the Java application
FROM maven:3.8.4-openjdk-17 AS builder

# Copy the Maven project files into the container
COPY pom.xml /build/
COPY src /build/src/

# Set the working directory for Maven commands
WORKDIR /build

# Build the application and package it into a JAR file
RUN mvn clean package

# Use OpenJDK 8 as the base image for the final image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the builder stage into the final image
COPY --from=builder /build/target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
