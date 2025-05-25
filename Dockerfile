# Use official Tomcat base image with Java 11
FROM tomcat:10.1-jdk21-temurin

# Remove the default ROOT webapp to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file as the new ROOT webapp
COPY Root.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
