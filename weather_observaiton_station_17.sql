SELECT ROUND(long_w,4) FROM
(SELECT long_w, MIN(lat_n)
FROM station
WHERE lat_n > 38.7780
GROUP BY long_w
ORDER BY 2
LIMIT 1) d;
