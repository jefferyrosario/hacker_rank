SELECT c.company_code, c.founder, COUNT(DISTINCT l.lead_manager_code),COUNT(DISTINCT s.senior_manager_code),
COUNT(DISTINCT m.manager_code), COUNT(DISTINCT e.employee_code)
FROM company c
INNER JOIN  lead_manager l
ON c.company_code = l.company_code
INNER JOIN senior_manager s
ON l.company_code = s.company_code
INNER JOIN manager m
ON s.company_code = m.company_code
INNER JOIN employee e
ON m.company_code = e.company_code
GROUP BY 1,2
;
