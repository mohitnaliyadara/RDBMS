create table item(

    item_no varchar(5),
    item_name varchar(20),
    price number(6),
    weight number(8),

    constraint item_no_check check(regexp_like(item_no,'^I[0-9]+$')),
    constraint item_no_primary_key primary key(item_no)
    constraint price_check check(price>0),
    constraint weight_check check(weight>0)
    
)

alter table item  add constraint item_no_primary_key   primary key(item_no);