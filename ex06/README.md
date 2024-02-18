## 도커 컴포즈 백그라운드 실행법
```sh
docker-compose up -d 
```

### DB 더미 데이터
```sql
use hongdb

create table person(
    id int primary key,
    name varchar(100)
);

insert into person(id,name) values(1,'hong');

select * from person;
```