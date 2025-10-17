# Etapa 1: build
FROM node:22.14.0-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN npm run build

# Etapa 2: servir los archivos estáticos con nginx
FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html

# Elimina la configuración por defecto de nginx y copia una nueva (opcional)
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 3002

CMD ["nginx", "-g", "daemon off;"]