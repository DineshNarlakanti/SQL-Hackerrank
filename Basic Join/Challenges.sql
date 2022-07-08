
SELECT c.hacker_id as id, h.name as name , count(c.hacker_id) as total 
FROM Hackers h
INNER JOIN Challenges c on c.hacker_id = h.hacker_id
GROUP BY c.hacker_id, h.name
having 
total = (select count(challenge_id) as total2 from challenges group by hacker_id order by total2 desc limit 1 )
or
total in 
(select total3 from 
(
    SELECT c2.hacker_id as id, h2.name as name , count(c2.hacker_id) as total3
FROM Hackers h2
INNER JOIN Challenges c2 on c2.hacker_id = h2.hacker_id
GROUP BY c2.hacker_id, h2.name
)as temp
 group by total3
 having count(total3)=1
)
order by total desc, h.hacker_id;

