
select start_date, min(end_date) 
from 
(select start_date from Projects where start_date not in (select end_date from Projects)) sd,
(select end_date from Projects where end_date not in (select start_date from projects)) ed
where start_date < end_date
group by start_date
order by datediff( min(end_date), start_date) asc, start_date;

