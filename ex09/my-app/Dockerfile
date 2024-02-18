# SpringBoot 서버에 build 먼저 해준 후 별칭을 build로 해준다.
FROM node:alpine as build
WORKDIR /app
COPY package.json /app
RUN npm install --silent
COPY . /app
RUN npm run build


FROM nginx
#build 별칭으로 빌드되어 생긴 디렉토리(/app/build)의 내용을  -> nginx의 /usr/share/nginx/html로 복사
COPY --from=build /app/build /usr/share/nginx/html
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
