use WellsFargoDb
Create Table Department(
    Dept_no varchar(255),
    Dept_name varchar(255),
    location varchar(255),
);
Insert into Department
VALUES('d1','Research','Dallas')
Create Table Employee(
     emp_no int,
    emp_fname varchar(255),
    emp_lname varchar(255),
     Dept_no varchar(255)
);
Create Table Project(
     Project_no varchar(255),
    Project_0name varchar(255),
    Budget int, 
);
Create Table Works_on(
     emp_no int,
    Project_no varchar(255),
    Job varchar(255),
     enter_date varchar(255)
);

Select * from Works_on
Select emp_no from Works_on where Job ='Clerk'
Select emp_no from Works_on where Project_no ='P2' and emp_no<10000
Select emp_no from Works_on where  enter_date Not Like '1998%'
Select emp_no from Works_on where Project_no ='P1' and Job in ('Analyst','Manager')
Select emp_no,enter_date from Works_on where Project_no ='P2' and Job= null
Select emp_no,emp_lname from Employee where (SELECT LEN(emp_fname) - LEN(REPLACE(emp_fname, 't', ''))) = 2
)
