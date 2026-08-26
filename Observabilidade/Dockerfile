FROM node:18-alpine

# Instala o OpenSSL necessário para o Prisma rodar no Alpine
RUN apk add --no-cache openssl

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npx prisma generate
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]