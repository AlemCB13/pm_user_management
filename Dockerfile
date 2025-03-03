FROM maven:3.8.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/pm_user_management-1.0-SNAPSHOT.jar .
CMD ["java", "-jar", "pm_user_management-1.0-SNAPSHOT.jar"]