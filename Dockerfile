FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

COPY . .
RUN mvn -B clean verify

FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

ENV JAVA_TOOL_OPTIONS="-XX:MaxRAMPercentage=65.0"
CMD ["java", "-jar", "app.jar"]