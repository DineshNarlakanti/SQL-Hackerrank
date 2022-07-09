
select con.contest_id as contest_id, con.hacker_id as hacker_id, con.name as name, sum(subs.total_submissions) as t_subs, sum(subs.total_accepted_submissions) as t_asubs, sum(vs.total_views), sum(vs.total_unique_views)
from 
Contests con join Colleges col on con.contest_id = col.contest_id
join Challenges chal on col.college_id = chal.college_id

left join (select challenge_id, sum(total_submissions) as total_submissions, sum(total_accepted_submissions) as total_accepted_submissions from Submission_Stats group by challenge_id) as subs on subs.challenge_id = chal.challenge_id

left join (select challenge_id, sum(total_views) as total_views, sum(total_unique_views) as total_unique_views from View_stats group by challenge_id) as vs on vs.challenge_id = chal.challenge_id
group by con.contest_id, con.hacker_id, con.name;

