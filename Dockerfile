
# Use an official Maven image as a parent image
FROM maven:latest

# Set metadata information
LABEL authors="yasminbx"

# Set the working directory in the container
WORKDIR /app

# Copy the pom.xml file to the container
COPY pom.xml /app/

# Copy the entire project to the container
COPY . /app/


RUN mvn package

CMD ["java", "-jar", "target/Laskinweek5-1.0-SNAPSHOT.jar"]