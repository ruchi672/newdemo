FROM tomcat:7.0

RUN echo 'Deploying War on Server'

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/spring-mvc-sample-2.0.war  /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]