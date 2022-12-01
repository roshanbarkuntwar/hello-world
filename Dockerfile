FROM tomcat:latest
RUN apt-get install wget -y
RUN wget --no-verbose -O /tmp/apache-maven-3.6.3-bin.tar.gz https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar xzf /tmp/apache-maven-3.6.3-bin.tar.gz -C /opt/
RUN ln -s /opt/apache-maven-3.6.3 /opt/maven
RUN ln -s /opt/maven/bin/mvn /usr/local/bin
RUN rm -f /tmp/apache-maven-3.6.3-bin.tar.gz
ENV MAVEN_HOME /opt/maven
RUN apt-get clean

