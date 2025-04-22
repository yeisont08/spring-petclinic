FROM eclipse-temurin:17
LABEL maintainer="yeisont08@gmail.com"
COPY /target/*.jar /home/spring-petclinic.jar
CMD ["java","-jar","/home/spring-petclinic.jar"]
