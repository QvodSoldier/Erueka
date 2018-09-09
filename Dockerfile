FROM 172.16.0.34:5000/alauda-cicd/base-image:jdk8

ADD ./target/spring-cloud-eureka-1.0.0-SNAPSHOT.jar /root
CMD ["sh", "-c", "cd /root; java -Djava.security.egd=file:/dev/./urandom -jar /root/spring-cloud-eureka-1.0.0-SNAPSHOT.jar --eureka.server.enable-self-preservation=false"]
EXPOSE 8761

