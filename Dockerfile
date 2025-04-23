FROM eclipse-temurin:17
LABEL maintainer="yeisont08"
COPY /target/*.jar /home/spring-petclinic.jar
CMD ["java","-jar","/home/spring-petclinic.jar"]
