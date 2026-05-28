--select * from employee;
--select emp_name, birthday, sal from employee;
--select emp_name as ?øΩ]?øΩ∆àÔøΩ?øΩ?øΩ, birthday as ?øΩ?øΩ?øΩN?øΩ?øΩ?øΩ?øΩ,sal as ?øΩ?øΩ?øΩ^,cast(sal*12 as int) as ?øΩN?øΩ?øΩ from employee;
--select emp_name as ?øΩ]?øΩ∆àÔøΩ?øΩ?øΩ, birthday as ?øΩ?øΩ?øΩN?øΩ?øΩ?øΩ?øΩ,(sal*0.7) as ?øΩ?øΩ?øΩ^,((sal*0.7)*12)::int as ?øΩN?øΩ?øΩ from employee;
--select '?øΩ@?øΩS?øΩ?øΩ?øΩ“Å@'|| emp_name ||'?øΩ@?øΩÃía?øΩ?øΩ?øΩ?øΩ?øΩÕÅ@'||birthday || '?øΩ@?øΩ≈ÇÔøΩ'from employee;
--select emp_name, to_char(birthday, 'Day month DD YYYY') from employee;
select emp_name, to_char(sal,'9G999G999D99') from employee;
select emp_name, sal,comm, sal+COALESCE(comm,0) from employee;

















