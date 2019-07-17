FROM tiangolo/node-frontend:10 as build-stage
WORKDIR /app
COPY . ./
RUN npm install
RUN npm run build

FROM nginx:alpine
COPY --from=build-stage /nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-stage /app/build/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]