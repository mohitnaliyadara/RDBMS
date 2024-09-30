create table student_master(

    enroll_no varchar(11),
    name varchar(15) not null,
    DOB varchar(20) not null,
    city varchar(20) not null,
    pincode number(6),

    constraint enroll_no_check check(length(enroll_no) =11),
    constraint primary_key_enroll_no primary key(enroll_no),
    constraint pincode_check check(length(pincode) = 6)
    

)

-- insert data

insert into student_master values(20002412001,'Hit','02-03-2004','Surat','394517')
insert into student_master values(20002412002,'Aksash','08-05-2004','Ahmedanad','380012')
insert into student_master values(20002412003,'Vinay','25-09-2004','Baroda','300018')
insert into student_master values(20002412004,'Ram','24-01-2004','Dwarka','110037')
insert into student_master values(20002412005,'Maan','25-12-2004','Surat','390041')
