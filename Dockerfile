# ---------- Build Stage ----------
FROM gradle:8.14.3-jdk17 AS build

WORKDIR /app

# Copy project files
COPY . .

# Build application
RUN gradle build -x test

# ---------- Runtime Stage ----------
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy generated jar from build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Application runs on 8080
EXPOSE 8080

# Start application
ENTRYPOINT ["java", "-jar", "app.jar"]