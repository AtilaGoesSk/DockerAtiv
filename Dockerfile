# Usa a imagem oficial do Node.js
FROM node:18-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos da aplicação para o contêiner
COPY package.json package-lock.json ./
RUN npm install

COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "index.js"]
