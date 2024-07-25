FROM openjdk:17-jdk-alpine  

COPY target/*.war /opt/tomcat/webapps

EXPOSE 9080

CMD ["/opt/tomcat/apache-tomcat-11.0.0-M22/bin/catalina.sh", "run"] 
