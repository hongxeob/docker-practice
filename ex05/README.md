# MYSQL 도커 파일 생성 방법 
```txt
FROM mysql

ENV MYSQL_USER=hong
ENV MYSQL_PASSWORD=hong1234
ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=hongdb

CMD [ "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci" ]

```
# UTF 8 설정확인
```sh
SHOW VARIABLES LIKE 'character_set_%';
```

# 볼륨 옵션으로 실행하는 법
```sh
docker run -d -v /Users/hongxeob/Desktop/study/Docker_LAB/ex05/mysql_volume -p 3307:3306 --name mysql-container mysql-image
```