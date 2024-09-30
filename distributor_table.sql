create table distributor(

    dno varchar(4),
    dname varchar(20),
    city varchar(20),
    phone number(10),

    constraint dno_primary_key primary key(dno),
    constraint dno_check check(regexp_like(dno,'^D[0-9]{3}$')),
    constraint phone_check check(length(phone) = 10)
)

