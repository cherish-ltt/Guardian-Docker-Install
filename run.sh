#!/bin/bash

# 创建必要目录
# mkdir -p nginx
# mkdir -p pgsql
# mkdir -p nextjs
# mkdir -p axum
# mkdir -p py-task
echo "正在检测..."

# 检查是否已安装 Docker
if ! command -v docker &> /dev/null; then
    echo "错误: 需要安装 Docker"
    exit 1
fi

# 检查是否已安装 Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "错误: 需要安装 Docker Compose"
    exit 1
fi

# 启动服务
echo "正在启动服务..."
docker-compose up

echo "服务启动完成！"
echo "前端: http://localhost:7001"
echo "API: http://localhost:7002"
echo "数据库: localhost:7000"
echo ""
echo "查看日志: docker-compose logs -f"
echo "停止服务: ./stop.sh"
