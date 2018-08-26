# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="npmarks@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=build/libs/animalcrackers-0.1.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} animalcrackers.jar

# The JAR contains a copy of the application.properties file from the build process.
# Copying in the src/  version allows us to override with new values by recreating the docker image witouh rebuilding
# the JAR. There's no reason to do this aside from playing wiht precedences rules 14 and 15
# https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html
ARG CONFIG_FILE=src/main/resources/application.properties

# Add the application's jar to the container
ADD ${CONFIG_FILE} application.properties

# ENV RESPONSE_STRING Some Helloworld String in DOCKER

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/animalcrackers.jar","--spring.config.location=file:application.properties"]