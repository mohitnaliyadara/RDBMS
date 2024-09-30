create table sales_order (

    order_no varchar(4),
    client_no varchar(4),
    order_date varchar(15),
    salesmana_no varchar(4),
    delivary_type char(1),
    bill_paid char(1),
    delivary_date varchar(15),
    order_status varchar(15),

    constraint order_no_check check(regexp_like(order_no,'^O[0-9]{3}$')),
    constraint primary_key primary key (order_no),
    foreign key(client_no) references client_master(c_no),
    foreign key(salesmana_no) references salesman_master(s_no),
    constraint delivary_type_check check(delivary_type = 'F' or delivary_type = 'P'),
    constraint bill_paid_check check(bill_paid = 'Y' or bill_paid = 'N'),
    constraint order_status_check check(order_status = 'Process' or order_status = 'Fulfilled')

)

--insert data

insert into sales_order values('O001','C002','01-05-2023','S001','F','Y','08-05-2023','Fulfilled')
insert into sales_order values('O002','C001','06-05-2023','S002','P','N','10-05-2023','Process')
insert into sales_order values('O003','C004','15-05-2023','S004','F','N','22-05-2023','Process')
insert into sales_order values('O004','C003','15-05-2023','S002','F','Y','22-05-2023','Fulfilled')
insert into sales_order values('O005','C005','20-05-2023','S002','F','Y','28-05-2023','Fulfilled')



