FROM gradle:5.6.2-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon 

FROM  openjdk:11-jdk-slim
EXPOSE 8081
RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/*.jar /app/spring-boot-application.jar
CMD [ "java","-jar","/app/spring-boot-application.jar" ]