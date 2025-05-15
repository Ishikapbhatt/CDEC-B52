FROM ubuntu:20.04
LABEL dev="Ishika"

# Install necessary packages
RUN apt-get update && \
    apt-get install -y wget unzip openjdk-11-jdk

# Define Tomcat version
ENV TOMCAT_VERSION=9.0.105
ENV TOMCAT_URL=https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.zip

# Download and extract Tomcat
RUN wget -O /opt/apache-tomcat-${TOMCAT_VERSION}.zip ${TOMCAT_URL} && \
    unzip /opt/apache-tomcat-${TOMCAT_VERSION}.zip -d /opt && \
    rm /opt/apache-tomcat-${TOMCAT_VERSION}.zip

# Set up Tomcat and deploy the WAR file
WORKDIR /opt/apache-tomcat-${TOMCAT_VERSION}/
RUN wget -O /opt/apache-tomcat-${TOMCAT_VERSION}/webapps/student.war https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war && \
    wget -O /opt/apache-tomcat-${TOMCAT_VERSION}/lib/mysql-connector.jar https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar 

COPY context.xml /opt/apache-tomcat-${TOMCAT_VERSION}/conf/context.xml

# Set permissions and run Tomcat
RUN chmod +rwx /opt/apache-tomcat-${TOMCAT_VERSION}/bin/*.sh

CMD ["/opt/apache-tomcat-9.0.100/bin/catalina.sh", "run"]

EXPOSE 8080
