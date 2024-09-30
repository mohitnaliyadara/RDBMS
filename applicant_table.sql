create table applicant(
    aid varchar(4),
    a_name varchar(20),
    address varchar(20),
    b_date date ,

    constraint aid_check check(regexp_like(aid,'^A[0-9]{3}$')),
    constraint aid_primary_key primary key(aid),
    constraint a_name_check check(regexp_like(a_name,'^[A-Z].*'))
)


insert into applicant values('A001','Akash','Surat',to_date('02-04-2004','DD-MM-YYYY'))
insert into applicant values('A002','Jainik','Ahmedabad',to_date('08-12-2004','DD-MM-YYYY'));
insert into applicant values('A003','Jay','Baroda',to_date('22-04-2003','DD-MM-YYYY'));
insert into applicant values('A004','Maan','Rajkot',to_date('29-02-2004','DD-MM-YYYY'));
insert into applicant values('A005','Uday','Ahmedabad',to_date('11-06-2004','DD-MM-YYYY'));