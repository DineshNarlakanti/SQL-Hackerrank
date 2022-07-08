
select h.hacker_id, h.name, sum(max_score) as total_score from 
Hackers h join 
(select hacker_id, max(score) as max_score from Submissions group by hacker_id, challenge_id) s
on h.hacker_id = s.hacker_id
group by h.hacker_id, name
having total_score >0
order by total_score desc, hacker_id asc;
