create table faculty_master(

    faculty_id varchar(4),
    first_name varchar(25),
    last_name varchar(25),
    doj varchar(10),
    address varchar(50),
    mobile number(10),
    department varchar(20),

    constraint faculty_id_check  check(regexp_like(faculty_id,'^F[0-9]{3}$')),
    constraint faculty_id_primary_key primary key(faculty_id),
    constraint first_name_check check(regexp_like(first_name,'^[A-Z]+$')),
    constraint last_name_check check(regexp_like(last_name,'^[A-Z]+$')),
    constraint first_name_check_lenght check(length(first_name)<=24),
    constraint last_name_check_lenght check(length(last_name)<=24),
    constraint mobile_check check(length(mobile)= 10),
    constraint department_check check(department in('MCA','M.Sc.IT','Integrated MCA'))

)


insert into faculty_master values('F001','MANSI','DIXIT','12-02-2003','Ahmedabad',9564875231,'MCA')
insert into faculty_master values('F002','MANSHUKH','NARAYAN','15-08-2005','Ahmedabad',9564486231,'M.Sc.IT')
insert into faculty_master values('F003','HARSH','MANDAVIYA','26-10-2004','Surat',6578286231,'MCA')
insert into faculty_master values('F004','MILAN','MANIYA','14-06-2008','Surat',8756248565,'Integrated MCA')
insert into faculty_master values('F005','KAMAXI','JAIN','04-11-2006','Ahmedabad',7896245235,'Integrated MCA')