

SELECT CAST(LAT_N AS DECIMAL (36,4))
FROM
    (SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) as MEDIAN 
     FROM STATION 
     ) AS X
WHERE MEDIAN = ( SELECT ROUND((COUNT(LAT_N)+1)/2,0) 
                FROM STATION
               );

               