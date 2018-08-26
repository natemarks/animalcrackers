# Goals

 - Write and debug in Intellij
 - Build with gradle
 - Use Spring Boot Externalized Configuration: https://docs.spring.io/spring-boot/docs/current/reference/html/boot-features-external-config.html
 - Use logbook (included in spring boot starter projects) and SLF4J for logging.  Logged output goes to the STDOUT in docker.
 - Include a Dockerfile that adds the JAR and the external application.properties file to the Docker image
 - Use docker-compose to start the docker image and bind ports, etc to the host