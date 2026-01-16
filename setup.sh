#!/bin/bash

echo "正在下载配置文件..."
curl -O https://raw.githubusercontent.com/cherish-ltt/Guardian-Docker-Install/main/docker-compose.yml
curl -O https://raw.githubusercontent.com/cherish-ltt/Guardian-Docker-Install/main/.env
curl -O https://raw.githubusercontent.com/cherish-ltt/Guardian-Docker-Install/main/run.sh
curl -O https://raw.githubusercontent.com/cherish-ltt/Guardian-Docker-Install/main/stop.sh

mkdir -p pgsql
curl -o pgsql/init.sql https://raw.githubusercontent.com/cherish-ltt/Guardian-Docker-Install/main/pgsql/init.sql

chmod +x run.sh stop.sh

echo "配置文件下载完成！"
echo "请确保已安装 Docker 和 Docker Compose"
echo "运行 ./run.sh 启动服务"
