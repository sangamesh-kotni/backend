# Example using MS Build of OpenJDK image directly
FROM --platform=linux/amd64 mcr.microsoft.com/openjdk/jdk:17-ubuntu

# Continue with your application deployment
ARG USER_HOME_DIR="/root"

# Install dependencies
RUN apt-get update && \
apt-get install -y git build-essential curl wget software-properties-common zip unzip

RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz &&  \
    tar -xvf apache-maven-3.9.3-bin.tar.gz -C /opt/

ENV M2_HOME /opt/apache-maven-3.9.3
ENV PATH="/opt/apache-maven-3.9.3/bin:${PATH}"

ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

## Define working directory.
#WORKDIR /data
#
## Define default command.
#CMD ["mvn", "--version"]
