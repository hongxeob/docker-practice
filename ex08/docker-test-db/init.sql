create tabel user_tb (
    id int auto_increment primary key,
    name varchar(50)
) engine=innodb default charset=utf8mb4 collate=utf8mb4_unicode_ci;

insert into user_tb (name) values ('lee');
insert into user_tb (name) values ('kim');