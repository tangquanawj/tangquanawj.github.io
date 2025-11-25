#!/bin/bash

# 确保在 Hexo 根目录运行
if [ ! -f "_config.yml" ]; then
  echo "错误：未找到 _config.yml，请确认在 Hexo 根目录运行"
  exit 1
fi

echo "安装依赖..."
npm install

echo "清理缓存..."
npx hexo clean

echo "生成静态文件..."
npx hexo generate

echo "部署到 GitHub Pages..."
npx hexo deploy

echo "完成 ✅ 访问 https://tangquanawj.github.io"
