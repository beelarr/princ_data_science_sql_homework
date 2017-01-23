SELECT BLDG_CODE, SUM(CAPACITY)
FROM LOCATION L
GROUP BY BLDG_CODE
HAVING SUM(CAPACITY) > 100;