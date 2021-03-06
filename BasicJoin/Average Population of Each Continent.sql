
SELECT CO.CONTINENT, FLOOR(AVG(C.POPULATION))
FROM CITY AS C JOIN COUNTRY AS CO ON
    C.COUNTRYCODE = CO.CODE
GROUP BY CO.CONTINENT
ORDER BY CO.CONTINENT ASC