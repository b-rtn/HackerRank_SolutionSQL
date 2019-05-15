
SELECT case
WHEN NOT A + B > C or NOT A + C > B or NOT B + C > A  THEN 'Not A Triangle'
WHEN A = B and B = C THEN 'Equilateral'
WHEN NOT A = B and NOT B = C and NOT A = C THEN 'Scalene'
WHEN (A = B AND A != C AND B != C) OR (B = C AND A != C AND A != B) OR (A = C AND A != B AND B != C) THEN 'Isosceles'

ELSE null
END as shape
FROM TRIANGLES;