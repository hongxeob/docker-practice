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
# 내가 프로젝트 내부에 설정한 nginx.conf 파일을 원래 엔진엑스의 conf 파일로 복사(덮어씌움)하겠다.
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
