Create table EmpNew(
EmpID int,
EmpName varchar(30),
EmpSalary int,
EmployeeFile Text
)
insert into  EmpNew values('1','Smith','200000','Mrs. Smith has worked in Infosys since 22/7/2010')
Select * from  EmpNew

Declare @pointer varbinary(30)
Select @pointer =TEXTPTR (EmployeeFile)from  EmpNew
Where EmpID=1
ReadText  EmpNew.EmployeeFile @pointer 0 0

--Declare @pointer varbinary(30)
Select @pointer =TEXTPTR (EmployeeFile)from EmpNew
Where EmpID=1
Writetext EmpNew.EmployeeFile @pointer 'ABCTestf'
Select * from  EmpNew

--Declare @pointer varbinary(30)
Select @pointer =TEXTPTR (EmployeeFile)from  EmpNew
Where EmpID=1
UpdateText  EmpNew.EmployeeFile @pointer 4 3 'RagiSigh'