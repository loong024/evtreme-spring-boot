#!/bin/bash

# 定义新版本号
NEW_VERSION="0.0.1"

# 指定到包含pom.xml的目录
PROJECT_DIR="../"

echo "开始更新 evtreme-spring-boot 项目版本号至 ${NEW_VERSION}..."

# 切换到包含pom.xml的目录
cd "${PROJECT_DIR}"

# 执行Maven命令更改版本
mvn versions:set -DgenerateBackupPoms=false -DnewVersion=${NEW_VERSION}

echo "evtreme-spring-boot 项目版本号更新成功！"