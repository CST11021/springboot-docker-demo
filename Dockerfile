# 基础镜像
FROM openjdk:8-jre
# 镜像构建作者
MAINTAINER wanghongzhan
# 指定进入容器的工作流目录
WORKDIR /
# 添加文件
ADD target/springboot-dockerfile-demo.jar app.jar
# 声明暴露的端口
EXPOSE 8090
# 追加参数，和CMD相似，但是并不会被docker run指定的参数覆盖
ENTRYPOINT ["java", "-jar"]
# 可以有多个CMD，但是只有最后一个会生效，在构建容器时，会被docker run后面指定的参数覆盖
CMD ["app.jar"]

# 构建镜像命令：docker build -t="wanghongzhan/springboot-dockerfile-demo:1.0-SNAPSHOT" .
# 参见：https://pdai.tech/md/spring/springboot/springboot-x-deploy-docker.html