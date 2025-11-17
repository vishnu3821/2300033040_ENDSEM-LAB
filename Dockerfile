# syntax=docker/dockerfile:1.7

# 1) Dependencies layer (cache-friendly)
FROM node:20-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
# Install all deps (including dev) for building
RUN npm ci --no-audit --no-fund

# 2) Build layer
FROM node:20-alpine AS build
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
# Build static assets to /app/dist
RUN npm run build

# 3) Runtime - serve static files via Nginx
FROM nginx:1.27-alpine AS runtime
# Replace default server with SPA-friendly config
COPY infra/nginx.conf /etc/nginx/conf.d/default.conf
# Copy built assets
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
RUN apk add --no-cache curl
HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD curl -f http://localhost/ || exit 1
# nginx image provides the default CMD ["nginx", "-g", "daemon off;"]
