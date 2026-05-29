--select * from employee;
--select emp_name, birthday, sal from employee;
--select emp_name as ?øΩ]?øΩ∆àÔøΩ?øΩ?øΩ, birthday as ?øΩ?øΩ?øΩN?øΩ?øΩ?øΩ?øΩ,sal as ?øΩ?øΩ?øΩ^,cast(sal*12 as int) as ?øΩN?øΩ?øΩ from employee;
--select emp_name as ?øΩ]?øΩ∆àÔøΩ?øΩ?øΩ, birthday as ?øΩ?øΩ?øΩN?øΩ?øΩ?øΩ?øΩ,(sal*0.7) as ?øΩ?øΩ?øΩ^,((sal*0.7)*12)::int as ?øΩN?øΩ?øΩ from employee;
--select '?øΩ@?øΩS?øΩ?øΩ?øΩ“Å@'|| emp_name ||'?øΩ@?øΩÃía?øΩ?øΩ?øΩ?øΩ?øΩÕÅ@'||birthday || '?øΩ@?øΩ≈ÇÔøΩ'from employee;
--select emp_name, to_char(birthday, 'Day month DD YYYY') from employee;
--select emp_name, to_char(sal,'9G999G999D99') from employee;
--select emp_name, sal,comm, sal+COALESCE(comm,0) from employee;
--select emp_name,gender from employee;
--select emp_name,
 --   case
   --     when gender=1 then 'íjê´'
     --                 else 'èóê´'
    --end
--from employee;

--select emp_name,
--case gender
  --      when 1 then '1ÇÕíjê´'
    --           else '2ÇÕèóê´'
    --end
--from employee;
--select * from employee order by hiredate;
--select * from employee order by sal desc;
--select * from employee order by gender desc, sal;
--select 
    --emp_name,
    --birthday,
    --sal,
    --comm,
    --sal+case 
      --  when comm is null then 0
        --    else comm
        --end as åéé˚
    --from employee
   -- order by 2 desc;
-- select * 
-- from employee 
-- order by sal
-- limit 3;

--é¿èK1
--select * from product;
--é¿èK2
--select prod_name,cost,discount from product;
--é¿èK3
--select prod_name,cost,discount, cost*discount as äÑà¯âøäi from product;
--é¿èK4
-- select 
-- prod_name,
-- cost,
-- discount,
-- to_char(cost*case
--     when discount is null then 1
--     else discount
--     end,'9G999G999D99') as äÑà¯âøäi
-- from product
-- order by äÑà¯âøäi desc
-- limit 3;
-- select 
--     emp_name,
--     sal 
-- from employee
-- where sal >2000 or sal=2000;
-- select
--     emp_name,
--     sal,
--     gender
-- from employee
-- where gender=2
-- ;
-- select
--     emp_name,
--     sal
-- from employee
-- where emp_name = 'à¿ïî çOç]';

-- select 
--     emp_name,
--     sal,
--     birthday
-- from employee
-- where birthday>='1980-01-01'
-- order by birthday;

-- select 
--     emp_name,
--     sal
-- from employee
-- between sal 2000 and 3000
-- ;

-- select
--     sal,
--     emp_id
-- from employee
-- where emp_id in (2,4,7)
-- ;

-- select
--     emp_name,
--     birthday,
--     gender,
--     sal
-- from employee
-- where
--     (sal<2000 or sal>3000) and gender=2
--     ;

-- select * from customer
-- where address not like '%ìåãûìs%'
-- ;

-- select cust_id,cust_name from customer
-- where cust_name like '_ìc%'
-- ;

-- select cust_id,cust_name from customer
-- where cust_name like '_ìc%éq'
-- ;

-- select * from employee
-- where comm is not null
-- ;

-- é¿èK1
-- select * from product
-- where cost >=2000;

-- é¿èK2
-- select 
-- cust_id,
-- cust_name,
-- fax
-- from customer
-- where fax is null
-- ;

-- é¿èK3
-- select
--     psales_no,
--     sales_no,
--     prod_id,
--     price
-- from sales
-- where psales_no<120 and psales_no>109
-- order by price desc
-- ;

-- é¿èK4
-- select
--     prod_id,
--     prod_name,
--     cost*discount
-- from product
-- where prod_id =102 or prod_id = 104 or prod_id = 106
-- ;


-- é¿èK6
-- select 
--     cust_id,
--     cust_name,
--     tel
-- from customer
-- where tel like '03%'or tel like '06%'
-- ;

-- select
--     count(*),
--     sum(sal),
--     min(sal),
--     max(sal)
-- from employee;

-- select
--     count(*)-count(comm) as ÉRÉ~ÉbÉVÉáÉìéùÇ¡ÇƒÇ»Ç¢
-- from employee
-- ;

-- select 
--     dept_id,
--     count(*),
--     sum(sal),
--     to_char(avg(sal),'9999D99') as avg,
--     min(sal),
--     max(sal)
-- from employee
-- group by dept_id
-- order by dept_id;

-- select 
--     gender,
--     count(*)
-- from employee
-- group by gender
-- order by gender
-- ;

-- select 
--     dept_id,
--     gender,
--     count(*),
--     to_char(avg(sal),'9999D99') as avg
-- from employee
-- group by dept_id, gender
-- order by dept_id, gender
-- ;

select
    dept_id,
    sum(sal),
    to_char(avg(sal),'9999d99') as avg,
    min(sal),
    max(sal)
from employee
group by dept_id
    having sum(sal)<=5000
order by dept_id
;


































