create table client_master(
c_no varchar(4) primary key,
client_name varchar(25) not null,
pincode number(6) not null,
birth_date varchar(20) not null,
occupation varchar(15) not null,
constraint c_no_formate check (regexp_like(c_no,'^C[0-9]{3}$')),
constraint pincode_length check(length(pincode) = 6)
)
/

-- alter table
 alter table client_master add birth_date varchar(20) not null

 -- insert data

insert into client_master values('C001','Kajal Oza','380036','14-july-1987','Manager')
insert into client_master values('C002','Vraj Shah','380058','20-nov-1986','ceo')
insert into client_master values('C003','Dhyan Dave','387903','17-june-1988','Doctor')
insert into client_master values('C004','Mira Vaid','380006','05-jan-1976','Professor')
insert into client_master values('C005','Preeti Patel','380040','28-feb-1971','Clerk')