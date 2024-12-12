# Use an OpenJDK base image
FROM openjdk:11-jdk-slim
# Copy the JAR file into the container
COPY ./target/*.jar /app/app.jar
# Set the working directory inside the container
WORKDIR /app
# Set the command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
