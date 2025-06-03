FROM node:24-alpine3.21 as builder
WORKDIR /app
COPY *.json . 
RUN npm install 
COPY . . 
EXPOSE 8000
CMD ["npm", "start"]