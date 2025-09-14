#!/bin/bash

# 数据中台开发环境启动脚本
echo "正在启动数据中台开发环境..."

# 检查Docker是否运行
if ! docker info > /dev/null 2>&1; then
    echo "错误: Docker未运行，请先启动Docker"
    exit 1
fi

# 检查Docker Compose是否安装
if ! command -v docker-compose &> /dev/null; then
    echo "错误: Docker Compose未安装"
    exit 1
fi

# 进入项目根目录
cd "$(dirname "$0")/.."

# 启动基础服务
echo "启动基础服务..."
docker-compose -f docker/docker-compose-dev.yml up -d

# 等待服务启动
echo "等待服务启动..."
sleep 30

# 检查服务状态
echo "检查服务状态..."
docker-compose -f docker/docker-compose-dev.yml ps

# 显示服务访问地址
echo ""
echo "=========================================="
echo "数据中台开发环境启动完成！"
echo "=========================================="
echo "Nacos控制台: http://localhost:8848/nacos"
echo "用户名/密码: nacos/nacos"
echo ""
echo "MySQL: localhost:3306"
echo "用户名/密码: root/root123"
echo ""
echo "Redis: localhost:6379"
echo ""
echo "RocketMQ控制台: http://localhost:8080"
echo ""
echo "Elasticsearch: http://localhost:9200"
echo ""
echo "MinIO控制台: http://localhost:9001"
echo "用户名/密码: admin/admin123"
echo ""
echo "ClickHouse: localhost:8123"
echo "用户名/密码: admin/admin123"
echo "=========================================="