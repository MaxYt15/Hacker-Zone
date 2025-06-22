# Imagen base oficial de Node.js
FROM node:20-alpine

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install --production

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto que usa la app
EXPOSE 3400

# Comando para iniciar la app
CMD ["node", "index.js"] 