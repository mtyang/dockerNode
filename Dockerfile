# Dockerfile.alpine

# 基础镜像
FROM alpine

# 作者信息
MAINTAINER Enzo enzoyang@superjia.com

# 更新apk 并且安装node
RUN apk --update add nodejs

# 创建文件
RUN mkdir -p /usr/src/app

# 修改npm源
# RUN npm install cnpm -g --registry=https://registry.npm.taobao.org

# 拷贝运行文件
COPY . /usr/src/app/

# 进入工作目录
WORKDIR /usr/src/app 

# 抛出服务端口
EXPOSE 8010

# 启动时执行命令
CMD [ "npm", "start"]