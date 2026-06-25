FROM tomcat:10.1-jdk21-temurin

WORKDIR /usr/local/tomcat

RUN rm -rf webapps/ROOT

# 手元で書き出した ROOT.war をTomcatのwebappsフォルダにコピー
COPY ROOT.war webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]