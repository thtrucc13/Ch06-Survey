FROM tomcat:9.0-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ch06_ex2_survey.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng 8080
EXPOSE 8080

# Khởi động Tomcat
CMD ["catalina.sh", "run"]