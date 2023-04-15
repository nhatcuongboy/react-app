FROM node:lts-alpine AS builder
WORKDIR /app
COPY ["package.json", "./"]
RUN npm install
COPY . .
LABEL name="reactjs" version="1.0"
EXPOSE 3000
CMD ["npm", "start"]