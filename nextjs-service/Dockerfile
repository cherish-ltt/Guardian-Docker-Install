# 使用 Bun 的 Alpine 镜像（比 Node.js 更小更快）
FROM oven/bun:canary-alpine AS runner

# 创建非 root 用户以提高安全性
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs
USER nextjs

WORKDIR /app

# 设置环境变量
ENV NODE_ENV=production
ENV PORT=3000
ENV HOSTNAME=0.0.0.0

# 复制构建文件
COPY --chown=nextjs:bunjs .next/standalone ./
COPY --chown=nextjs:bunjs .next/static ./.next/static
COPY --chown=nextjs:bunjs public ./public

# 暴露端口
EXPOSE 3000

# 启动应用
CMD ["bun", "run", "server.js"]
