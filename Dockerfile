FROM openjdk:8-slim

ENV PORT="80"
ENV SERVER_PORT=$PORT

COPY ./ ./
RUN ./gradlew && ./gradlew build
CMD ["java", "-jar", "build/libs/todo-backend-0.1.0.jar"]