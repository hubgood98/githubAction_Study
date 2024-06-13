# Use the official OpenJDK 21 image as the base image
FROM eclipse-temurin:21-jdk

# Add a volume pointing to /tmp
VOLUME /tmp

# Copy the packaged jar file into the Docker image
COPY target/*.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app.jar"]