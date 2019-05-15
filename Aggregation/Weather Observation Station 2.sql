

select cast(round(sum(lat_N), 2) as decimal(36,2)) as sumLat , cast(round(sum(long_w), 2) as decimal(36,2)) as sumLong
from station