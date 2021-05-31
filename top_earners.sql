SELECT months * salary, COUNT(months * salary)
FROM employee
WHERE months * salary IN
    (SELECT MAX(months * salary)
     FROM employee)
GROUP BY 1;
