#Stage 1 BUILD

FROM node:latest AS build
 
WORKDIR /react-app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build 

EXPOSE 8080:3000

CMD [ "npm" , "start"]

# Stage 2: Production
FROM node:latest

WORKDIR /app

COPY --from=build /react-app/build ./build

EXPOSE 3000

# Stage 3: NGINX
FROM nginx:latest

RUN rm -rf /etc/nginx/conf.d/*

COPY --from=build /react-app/build /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]


