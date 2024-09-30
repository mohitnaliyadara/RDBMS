create table product_master(
p_no varchar(4) primary key,
description varchar(40) not null,
profit_per number(2) not null,
unit varchar(10) not null,
qty_hand number(4) not null,
reorder number(3) not null,
sell_p number(4) not null,
cost_p number(4) not null,
constraint p_no_reg_ex check(regexp_like(p_no,'^P[0-9]{3}$'))
)
/

-- insert data

insert into product_master values('P001','T-Shirt',3,'Piece',200,50,350,250)
insert into product_master values('P002','Jeans',6,'Piece',150,40,500,350)
insert into product_master values('P003','Skirt',6,'Piece',100,50,350,200)
insert into product_master values('P004','Saree',3,'Piece',100,20,800,600)
