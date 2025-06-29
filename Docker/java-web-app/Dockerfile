# Use Tomcat base image
FROM tomcat:10.1-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat
COPY target/java-web-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose default port
EXPOSE 8080
