create database addressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Mayur','Bari','Ramsing Nagar','Shirpur',
'Maharashtra','425405','9067853112','Mayur12@gmail.com'),('Mayu','Kalal','Karvand Naka','Shirpur','Maharashtra','425405','8007005426','Mayurkalal@gmail.com')
,('Pappu','Mali','PremKamal Nagar','Shirpur','Maharashtra','425405','8329479200','pappu@gmail.com');
select *from addressBook;
update addressBook set phone = '9067853113' where firstname = 'Mayur';

delete from addressBook where firstname = 'Mayur';

select *from addressBook where city ='Shirpur';

select count(*) from addressBook where state = 'Maharashtra';

select *from addressBook where state = 'Maharashtra' order by firstname;

update addressBook set bookname='Book1' where firstname = 'Mayur';
update addressBook set bookname='Book2' where firstname = 'Mayu';
update addressBook set bookname='Book3' where firstname = 'Pappu';
update addressBook set booktype='Family' where firstname = 'Mayur';
update addressBook set booktype='Friends' where firstname = 'Mayu';
update addressBook set booktype='Profession' where firstname = 'Pappu';

select booktype, count(*) from addressBook group by booktype;