FROM openjdk:8-jre
MAINTAINER wanghongzhan
WORKDIR /
ADD target/springboot-dockerfile-demo.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar"]
CMD ["app.jar"]

# docker build -t="wanghongzhan/springboot-dockerfile-demo:1.0-SNAPSHOT" .
# 参见：https://pdai.tech/md/spring/springboot/springboot-x-deploy-docker.html