## Crear una imagen con Node en la version que tenemos instalada
FROM node:20.11.1

## Crear una carpeta donde vivira nuestra apliacion
WORKDIR /app

COPY package*.json ./

## Instalar los node_modules para correr la aplicacion
RUN npm i

## Copiar todos los archivos
COPY . ./

# Corremos el build para convertir a TypeScript
RUN npm run build

# Dejar una puerta o entrada de nuestro puerto

EXPOSE 3000

# Ejecutar la app
CMD ["node", "dist/src/app.js"]