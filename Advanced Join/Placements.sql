
select name from 
(
select s.name as name,p.salary as salary, f.friend_id as friend_id,fp.salary as friend_salary  from 
students s join friends f on s.id = f.id
join packages p on s.id = p.id
join packages fp on fp.id = f.friend_id
) as temp
where
salary < friend_salary
order by friend_salary;

