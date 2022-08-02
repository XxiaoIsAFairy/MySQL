CREATE TABLE game_character (id INT(5),name VARCHAR(31),job VARCHAR(51),level INT(5),create_at DATETIME);
insert into game_character (id,name,job,level,create_at) values 
(1,"ヤマダ","",30,now()),
(2,"スズキ","戦士",42,now()),
(3,"タナカ","戦士",25,now()),
(4,"たかはし","魔道士",60,now()),
(5,"ワタナベ","僧侶",20,now());

alter table game_character add column gender varchar(2) after name,
add column age int(5) after gender;

set sql_safe_updates=0;

update game_character set gender="男",age=21 where id =1;
update game_character set gender="女",age=18 where id =2;
update game_character set gender="男",age=51 where id =3;
update game_character set gender="男",age=21 where id =4;
update game_character set gender="女",age=30 where id =5;

update game_character set job="勇者" where id =1;
select * from game_character;
select *,count(gender) from game_character group by gender;

select * from game_character order by age desc;

select age,count(age) from game_character group by age;

select * from game_character where age >=20;
select * from game_character where age <=50 and job<>"戦士";
select * from game_character where age >30 and level<30;
