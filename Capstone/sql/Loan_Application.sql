
----inserting values


insert into Loan_Application  values( next value for Loan_Application_seq,101,'Home Loan', 200000.00);
insert into Loan_Application  values( next value for Loan_Application_seq,102,'Car Loan', 30000.00);

select * from Loan_Application ;
alter table Loan_application add status varchar(50);