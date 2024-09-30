create table salesman_master(

    s_no varchar(4) primary key,
    name varchar(10) not null,
    add1 varchar(20),
    add2 varchar(20),
    city varchar(15) not null,
    pincode number(6),
    state varchar(20) not null,
    salary number(10) not null,
    target number(10) not null,
    sales number(10)not null,

    constraint s_no_regex check(regexp_like(s_no,'^S[0-9]{3}$')),
    constraint pincode_length check(length(pincode) =6)
)

-- insert data

insert into salesman_master(s_no,name,add1,add2,city,state,salary,target,sales) values('S001','Aman','3,Dev Appt.','Vaghodia','Baroda','Gujarat',5000,100,50)
insert into salesman_master(s_no,name,city,state,salary,target,sales) values('S002','Omkar','Bhopal','MP',4500,200,150)
insert into salesman_master values('S003','Raj','B-104','Verli','Mumbai','400002','Maharastra',5500,200,200)
insert into salesman_master(s_no,name,add1,add2,city,state,salary,target,sales) values('S004','Ashish','1,Smruti','Ghoddol','Surat','Gujarat',4500,150,100)
insert into salesman_master values('S005','Maan','B-301','Kosad','Surat',394107,'Gujarat',5500,200,150)
insert into salesman_master values('S006','Akash','99, Srushti','Kosad','Surat',394107,'Gujarat',5500,250,200)
insert into salesman_master(s_no,name,city,state,salary,target,sales) values('S007','Hit','Banglore','Karnataka',7000,500,502)
insert into salesman_master values('S008','Naman','02-B','Mansi society','Ahmedabad',380025,'Gujarat',2500,80,75)
insert into salesman_master values('S009','Mansi','201-C','Bharati Apt.','Surat',394512,'Gujarat',3000,300,208)
insert into salesman_master values('S010','Kajal','99','sai Bangalow','surat',392015,'Gujarat',6000,700,675)