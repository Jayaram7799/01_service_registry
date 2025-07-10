# Use OpenJDK 17 base image
FROM openjdk:17

# Copy the built JAR into the container
COPY target/serviceregistry.jar /usr/app/

# Set the working directory
WORKDIR /usr/app

# Expose port 8761 (Eureka default)
EXPOSE 8761

# Run the JAR
ENTRYPOINT ["java", "-jar", "serviceregistry.jar"]
