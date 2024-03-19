# Use the Red Hat Universal Base Image (UBI) for Java 17
FROM registry.access.redhat.com/ubi8/ubi:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Java application JAR file into the container
COPY ./target/*.jar HelloWorld.jar

# Grant execute permissions to the JAR file
RUN chmod +x HelloWorld.jar

# Set the default command to run the Java application
CMD ["java", "-jar", "HelloWorld.jar"]