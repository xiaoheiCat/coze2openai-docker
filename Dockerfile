# 使用官方 Node.js 镜像作为基础镜像
FROM node:20

# 设置工作目录
WORKDIR /app

# 复制整个项目目录到工作目录
COPY . /app

# 安装 pnpm
RUN npm install -g pnpm

# 使用 pnpm 安装项目依赖
RUN pnpm install

# 暴露应用端口（如果需要）
EXPOSE 3000

# 使用 pnpm 启动项目
CMD ["pnpm", "start"]
