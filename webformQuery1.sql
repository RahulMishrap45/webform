use ForPractice
select * from StudentForm;

Drop table StudentForm;


Create table StudentForm(
StuId int identity(1,1) primary key not null,
StuName varchar(25) null,
StuEmail varchar(25) null,
StuMobile bigint null,
StuDesignation varchar(25) null,
StuAddress varchar(25) null
);