create table sales_order_details(

    order_no varchar(4),
    product_no varchar(4),
    qty_ordered number(3),
    qty_dispatched number(3),
    product_rate  number(10),

   constraint primary_keys primary key(order_no,product_no),
   foreign key(order_no) references sales_order(order_no),
   foreign key(product_no) references product_master(p_no),
   constraint qty_ordered_ckeck check(regexp_like(qty_ordered, '^[0-9]*$')),
   constraint qty_dispatched_ckeck check(regexp_like(qty_dispatched, '^[0-9]*$'))

)

--insert data

insert into sales_order_details values('O001','P002',3,3,1500)
insert into sales_order_details values('O002','P001',1,1,350)
insert into sales_order_details values('O003','P004',4,4,3200)
insert into sales_order_details values('O004','P002',2,2,1000)
insert into sales_order_details values('O005','P003',5,5,1750)

