select *from demo.employees;


SELECT first_name as "First Name", last_name as "Last Name"  FROM demo.employees;
select distinct employee_id from demo.employees;
select*
 from demo.employees 
 order by first_name desc;
 
 select first_name,last_name,salary,salary*.15 pf
 from demo.employees 
 order by salary; 
 
 select first_name , last_name,salary
 from demo.employees 
 order by salary asc;
 
 select sum(salary)
 from demo.employees;
 
 select max(salary) , min(salary)
 from demo.employees;
 
 select avg(salary), count(*) from demo.employees;
 select count(*) from demo.employees;
 select count(distinct job_id) from demo.employees;
 select ucase(first_name) from demo.employees;
 select substring(first_name,1,3) from demo.employees;
 select trim(first_name)from demo.employees;
 select first_name,last_name,length(first_name)+length(last_name) 'length of name' from demo.employees;
 select * from demo.employees 
 where first_name regexp '[0-9]';
 Select first_name , last_name ,salary from demo.employees where salary not between 10000 and 15000 ;
 select employee_id, first_name , last_name , department_id from demo.employees where department_id between 30 and 100 order by employee_id asc;
 select first_name , last_name  , salary from demo.employees where salary not between 10000 and 15000 
 and department_id in (30,100);
select first_name , last_name , hire_date from demo.employees where year(hire_date) like '1987%';
select first_name from demo.employees where first_name like 'b%c';
select last_name , job_id , salary from demo.employees where job_id in ('it_prog' ,'sh_clerk') and salary not in (4500,10000,15000);
select last_name from demo.employees where last_name  like '______';
select last_name from demo.employees where last_name like '__e%';
select job_id, group_concat(employee_id, ' ') 'employees id' from demo.employees group by job_id;
update demo.employees 
set phone_number=replace(phone_number ,'124','999') where phone_number like '%124%';
select* from demo.employees where length(first_name) >=8;
update demo.employees
 set email = concat('email'like '@example.com');
 select right(phone_number , 4 ) as 'phone_number' from demo.employees; 
 select job_title , substr(job_title,1,instr(job_title,' ')-1) from demo.jobs;
 select first_name , last_name  from demo.employees where instr(last_name,'c')>2;
 select first_name "name",
 length (first_name) "length" 
 from demo.employees
 where first_name like 'j%'
 or first_name like 'm%'
 or first_name like 'a%'
 order by first_name;
 select first_name, lpad(salary,10,'$') SALARY from demo.employees;
 select first_name from demo.employees where first_name like '________';
 
 
 
 select employee_id , first_name , last_name , hire_date from demo.employees
 where position('07' in date_format(hire_date, '%d%m%y'));
 
 use demo;
 
 SELECT location_id, street_address, 
SUBSTRING_INDEX(REPLACE(REPLACE(REPLACE(street_address,',',' '),')',' '),'(',' '),' ',-1) 
AS 'Last--word-of-street_address' 
FROM locations;

 select	*from locations where 
 length(street_address)<=(select min(length(street_address))from demo.locations);
 
 SELECT left(first_name, 8),
REPEAT('$', FLOOR(salary/1000)) 
'SALARY($)', salary
FROM employees
ORDER BY salary DESC;


 
 