# Use an appropriate base image with JDK 17
FROM openjdk:17

# Set the working directory
WORKDIR /app

# Copy the JAR file from the previous build step
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
