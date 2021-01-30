
select * from CUSTOMERSHIPADDRESS_T where SHIPCITY like 'C%'

select * from CUSTOMERSHIPADDRESS_T where SHIPCITY like '%s';

select SHIPADDRESS, SHIPCITY, SHIPSTATE from CUSTOMERSHIPADDRESS_T where regexp_like (SHIPCITY, '^[A-D]');

select SHIPADDRESS, SHIPCITY, SHIPSTATE  from CUSTOMERSHIPADDRESS_T where regexp_like (SHIPCITY, '^C\w+t$');

select SHIPADDRESS, SHIPCITY, SHIPSTATE from CUSTOMERSHIPADDRESS_T where 
regexp_like(SHIPCITY,'C\w+s') and 
regexp_like(SHIPADDRESS,'^[0-9]{3}\s[A-Z]')

select SHIPADDRESS, SHIPCITY, SHIPSTATE, SHIPZIP from CUSTOMERSHIPADDRESS_T 
where regexp_like(SHIPSTATE,'^[C,O]') and 
regexp_like(SHIPZIP,'^[0-9]+[^0-9A-Za-z]$')

select CUSTOMERNAME, regexp_count(CUSTOMERNAME,'a|A') as a_count from CUSTOMER_T
where regexp_like(CUSTOMERPOSTALCODE,'[0-9]{5}.')

select regexp_replace(regexp_replace(CUSTOMERPOSTALCODE,'^','('),'-',')') as CUSTOMERPOSTALCODE from CUSTOMER_T
where regexp_like(CUSTOMERPOSTALCODE,'[0-9]-[0-9]')

select EmployeeID, regexp_instr(EmployeeID,'-') from EMPLOYEE_T;

select EMPLOYEEID, EMPLOYEENAME from EMPLOYEE_T where regexp_like(EMPLOYEENAME,'^[^L,M]')

select CUSTOMERPOSTALCODE,regexp_substr(CUSTOMERPOSTALCODE,'[^-]+',1,2)  as STREETCODE from CUSTOMER_T 


select CUSTOMERPOSTALCODE,regexp_substr(CUSTOMERPOSTALCODE,'[^-]+',1,2)  as STREETCODE from CUSTOMER_T where regexp_like(CUSTOMERPOSTALCODE,'-')

select regexp_substr('This is ReGUlaR Expression Topic Discussion','\w+',1,3) as SUBSTRING from dual

select regexp_substr('This is ReGUlaR Expression ,Topic Wise, Discussion','[^,]+',1,2) from dual

select PAYMENTCOMMENT from PAYMENT_T where regexp_like(PAYMENTCOMMENT,'^C|c')

select EMPLOYEEID from EMPLOYEESKILLS_T where regexp_like(EMPLOYEEID, '[^0-9]')

select SHIPCITY from CUSTOMERSHIPADDRESS_T where regexp_like(SHIPCITY, '.+e.+e.+')

select SHIPCITY, regexp_instr(SHIPCITY,'e',1,2) from CUSTOMERSHIPADDRESS_T where regexp_like(SHIPCITY, '.+e.+e.+')
