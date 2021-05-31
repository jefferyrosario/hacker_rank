SELECT h.hacker_id, h.name,  SUM(s.m_score)
FROM hackers h
INNER JOIN 
    (SELECT hacker_id, challenge_id, MAX(score) as m_score FROM submissions
    GROUP BY 1,2) s
ON h.hacker_id = s.hacker_id
GROUP BY 1,2
HAVING SUM(s.m_score) > 0
ORDER BY SUM(s.m_score) DESC,
h.hacker_id ASC;
