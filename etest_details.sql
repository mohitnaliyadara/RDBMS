create table etest_details(

    aid varchar(4),
    et_id varchar(4),
    etest_date date,
    score number(3),

    foreign key(aid) references applicant(aid),
    foreign key(et_id) references entrance_test(et_id)
)

insert into etest_details values('A001','T001',to_date('02-04-2024', 'DD-MM-YYYY'),80);
insert into etest_details values('A003','T002',to_date('05-03-2024', 'DD-MM-YYYY'),36);
insert into etest_details values('A002','T004',to_date('06-02-2024', 'DD-MM-YYYY'),70);
insert into etest_details values('A001','T005',to_date('05-03-2024', 'DD-MM-YYYY'),60);
insert into etest_details values('A005','T004',to_date('02-04-2024', 'DD-MM-YYYY'),75);