FROM gradle:7.4.0-jdk17-alpine AS GRADLE_BUILD

MAINTAINER Linus Ahlin Hamberg

COPY build.gradle.kts /build/
COPY settings.gradle.kts /build/
COPY gradlew.bat /build/
COPY gradlew /build/
COPY src /build/src/

WORKDIR /build/
RUN gradle build

FROM amazoncorretto:17

WORKDIR /app

COPY --from=GRADLE_BUILD /build/build/libs/digitalOceanApp-0.0.1-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-jar", "digitalOceanApp-0.0.1-SNAPSHOT.jar"]