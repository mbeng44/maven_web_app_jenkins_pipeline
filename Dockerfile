FROM openjdk:17-jdk-alpine  

COPY target/*.war /opt/tomcat/webapps

EXPOSE 9080

CMD ["catalina.sh", "run"] 
