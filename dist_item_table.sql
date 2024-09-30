create table  dist_item(

    dno varchar(4),
    item_no varchar(5),
    qty number(5),
    Dates date,

    foreign key(dno) references distributor(dno),
    foreign key(item_no) references item(item_no),
    constraint qty_check check(qty>0)
)