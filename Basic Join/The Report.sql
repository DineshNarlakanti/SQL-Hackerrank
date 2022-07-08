
SELECT IF (g.Grade < 8, NULL, s.Name) AS Sname, g.Grade, s.Marks FROM Students s
JOIN Grades g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, Sname ASC, s.Marks ASC;
