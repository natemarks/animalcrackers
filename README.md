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

Add .gitignore settings for IntelliJ and  for Java

# First Milestone: Build and run the application

We create two class files and edit the resources/applicaiton.properties file

The AnimalcrackersConfigurationProperties class gives the application access to the configuration data in the application.properties file, specifically the 'response' attribute. This is also an example of using the Lombok getter and setter annotaitons to minimize boilerplate methods.

The AnimalcrackersBaseController class has the method the the '/' REST endpoint.  It uses the application property 'response' from AnimalcrackersConfigurationProperties to return a string when we run:

```
curl http://localhost:8080/
```

The logging level is set in resources/application.properties, too.  If it's set to DEBUG,  two messages (an INFO and  DEBUG ) should be printed to STDOUT everytime  the REST endpoint is used.  If it's set to INFO, there will just be one message.