SELECT MAX(salary * months), COUNT(name) FROM Employee WHERE (months*salary) = (SELECT MAX(salary*months) from Employee);
