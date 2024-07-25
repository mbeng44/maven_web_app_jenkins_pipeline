FROM tomcat:jre17-temurin  

COPY target/*.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"] 
