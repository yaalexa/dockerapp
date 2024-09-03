# indicarle lenguaje
FROM node:14

WORKDIR /usr/src/app

# copia de json
COPY package*.json ./
# instalar dependencias
RUN npm install

# crear copia codigo 
COPY . .

#puerto
EXPOSE 3000

# archivo ejecucion
CMD [ "node","index.js" ]