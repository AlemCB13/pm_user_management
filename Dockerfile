FROM maven:3.8.4-openjdk-22 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM openjdk:22-jre-slim
WORKDIR /app
COPY --from=build /app/target/pm_user_management-1.0-SNAPSHOT.jar .
CMD ["java", "-jar", "pm_user_management-1.0-SNAPSHOT.jar"]