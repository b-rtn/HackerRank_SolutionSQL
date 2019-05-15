
select cast(round(max(LAT_N), 4) as decimal(36,4)) as sumLat
from station
where LAT_N < 137.2345