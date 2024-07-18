FROM openjdk:17-slim  

COPY target/*.war app.war  

EXPOSE 8081

CMD ["java", "-jar", "app.war"] 
