FROM kurron/docker-azul-jdk-8:latest

MAINTAINER Ron Kurr "kurr@jvmguy.com"

EXPOSE 8080
ENTRYPOINT ["/home/microservice/launch-jvm.sh", "/opt/showcase.jar"]
ADD launch-jvm.sh /home/microservice/launch-jvm.sh
RUN chmod a+x /home/microservice/launch-jvm.sh
COPY build/libs/showcase-0.0.0.RELEASE.jar /opt/showcase.jar
USER microservice
