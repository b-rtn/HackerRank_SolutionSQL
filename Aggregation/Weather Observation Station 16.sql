
select cast(round(min(lat_N), 4) as decimal(36,4)) as minLat
from station
where lat_n > 38.7780