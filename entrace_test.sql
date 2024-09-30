create table entrance_test(
    et_id varchar(4),
    et_name varchar(20),
    max_score number(3),

    constraint et_id_primary_key primary key(et_id),
    constraint et_id_check check(regexp_like(et_id,'^T[0-9]{3}$')),
    constraint max_score_check check(max_score<=100)
)

insert into entrance_test values('T001','Maths',35);
insert into entrance_test values('T002','SS',35);
insert into entrance_test values('T003','SC',25);
insert into entrance_test values('T004','English',35);
insert into entrance_test values('T005','Hindi',25);