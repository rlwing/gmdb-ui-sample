# Stage 1
FROM node:latest 
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod

EXPOSE 4200
CMD [ "node", "server.js" ]
