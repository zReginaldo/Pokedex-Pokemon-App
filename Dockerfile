FROM node:10
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install -g http-server
COPY . .
EXPOSE 8080
RUN npm run build
CMD [ "http-server", "dist" ]

