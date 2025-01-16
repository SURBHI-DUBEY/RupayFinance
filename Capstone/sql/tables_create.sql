----1.customer table------------------------------------------
CREATE TABLE Customer (
    customer_id int PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    contact_details VARCHAR(100),
    cibil int 
);
CREATE SEQUENCE Customer_seq
  START WITH 101
  INCREMENT BY 1;

----2.create table loan------------------------------------------------
CREATE TABLE Loan (
    loan_id int PRIMARY KEY,
    loan_type VARCHAR(100)
);

-----sequence for loan 
CREATE SEQUENCE Loan_seq
  START WITH 1
  INCREMENT BY 1;

-------3.Loan_Application table----------------------------------------
CREATE TABLE Loan_Application (
    application_number int PRIMARY KEY,
    customer_id int NOT NULL,
    loan_type VARCHAR(100) NOT NULL,
    loan_amount int NOT NULL
   
);
CREATE SEQUENCE Loan_Application_seq
  START WITH 1
  INCREMENT BY 1;


-------4.documents table-------------------------------------------
CREATE TABLE Documents (
    application_number int,
    document_name VARCHAR(100),
    CONSTRAINT fk_application_number FOREIGN KEY (application_number) REFERENCES Loan_Application(application_number)

);
CREATE SEQUENCE Documents_seq
  START WITH 1
  INCREMENT BY 1;


------------------------------------------------------------------------------------------------------------------------


drop table customer;
drop table loan;
drop table Documents;
drop table Loan_Application;

drop SEQUENCE Customer_seq restrict;
drop SEQUENCE Loan_seq restrict;
drop SEQUENCE Documents_seq restrict;
drop SEQUENCE Loan_Application_seq restrict;





