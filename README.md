# Java数据中台 - Spring Cloud Alibaba架构

## 项目简介

基于Spring Cloud Alibaba构建的企业级数据中台，提供数据接入、存储、处理、服务和应用的完整解决方案。

## 技术架构

### 核心框架
- **Spring Boot 3.2.0** - 微服务框架
- **Spring Cloud Alibaba 2023.0.1.0** - 微服务治理
- **Nacos** - 服务注册发现与配置中心
- **Sentinel** - 流量控制与熔断降级
- **RocketMQ** - 消息队列
- **Seata** - 分布式事务

### 数据存储
- **MySQL 8.0** - 关系型数据库
- **Redis 7.x** - 缓存
- **Elasticsearch 8.x** - 搜索引擎
- **MinIO** - 对象存储
- **ClickHouse** - OLAP数据库

### 数据处理
- **Apache Flink** - 实时流处理
- **Apache Spark** - 批处理
- **Canal** - MySQL binlog订阅

## 模块结构

```
data-platform/
├── data-platform-gateway/          # API网关
├── data-platform-common/           # 公共模块
├── data-platform-ingestion/        # 数据接入
├── data-platform-storage/          # 数据存储
├── data-platform-processing/       # 数据处理
├── data-platform-service/          # 数据服务
├── data-platform-application/      # 数据应用
├── data-platform-management/       # 系统管理
├── docker/                         # Docker配置
├── k8s/                           # Kubernetes配置
├── docs/                          # 项目文档
└── scripts/                       # 部署脚本
```

## 快速开始

### 环境要求
- JDK 17+
- Maven 3.8+
- Docker & Docker Compose
- Git 2.0+
- Kubernetes (生产环境)

### 本地开发
```bash
# 启动基础服务
docker-compose -f docker/docker-compose-dev.yml up -d

# 编译项目
mvn clean compile

# 启动服务
mvn spring-boot:run
```

### 生产部署
```bash
# Kubernetes部署
kubectl apply -f k8s/
```

## 文档

- [架构设计](docs/architecture.md)
- [开发指南](docs/development.md)
- [部署指南](docs/deployment.md)
- [API文档](docs/api.md)

## 许可证

MIT License