FROM tomcat:jre17-temurin  

COPY target/*.war /opt/tomcat/webapps

EXPOSE 9080

CMD ["catalina.sh", "run"] 
