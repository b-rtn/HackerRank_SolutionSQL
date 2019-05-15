
select cast(round(abs((min(Lat_N)-max(lat_N)) +(min(long_w) - max(long_w))), 4) as decimal(36,4)) as ManhattanDistance
from station

