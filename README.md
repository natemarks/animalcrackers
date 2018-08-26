# Goals

 - Write and debug in Intellij
 - Build with gradle
 - Use Spring Boot Externalized Configuration: https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html
 - Use logbook (included in spring boot starter projects) and SLF4J for logging.  Logged output goes to the STDOUT in docker.
 - Include a Dockerfile that adds the JAR and the external application.properties file to the Docker image
 - Use docker-compose to start the docker image and bind ports, etc to the host
 
# Getting Started

These are the steps to recreate this project and its development environment

## All spring projects start with initializr

https://start.spring.io

Select Gradle project:
Select full version:
After this, I use add dependencies for Lombok, Spring REST data and Configuration Processor

![alt text](images/animalcrackers-initializr.png)

Download the initializer zip, unpack it and open it in Intellij like this:

*NOTE:* The project zip and folder name will actually be animalcrackers

![alt text](images/intellij-gradle-import.png)

## Intellij configuration

In Intellij enable annotation processing. It’s required for Lombok.

![alt text](images/enable-annotation-processing.png)

Install the Lombok plugin for Intellij

## Gradle Customization

Add: 
```
Apply plugin: ‘idea'
```
