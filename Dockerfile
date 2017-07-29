FROM maven:3-alpine

MAINTAINER XenonStack

# Creating Application Source Code Directory
RUN mkdir -p /usr/src/app

# Setting Home Directory for containers
WORKDIR /usr/src/app

# Copying src code to Container
COPY . /usr/src/app

# Building From Source Code
RUN ./gradlew build

# Setting Persistent drive
#VOLUME ["/kotlin-data"]

# Exposing Port
EXPOSE 8080

# Running Kotlin Application
CMD ["java", "-jar", "./build/libs/gs-spring-boot-0.1.0.jar", "&"]