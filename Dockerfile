FROM tomcat:jre17-temurin  

COPY target/*.war /usr/local/tomcat/webapps

EXPOSE 9080

CMD ["catalina.sh", "run"] 
