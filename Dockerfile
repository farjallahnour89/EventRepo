FROM openjdk:11
EXPOSE 8088
COPY target/event-project.jar event-project.jar
ENTRYPOINT ["java","-jar","/event-project.jar"]
