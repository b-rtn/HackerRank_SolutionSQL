
select cast(round(sqrt(square(min(lat_n) - max(lat_n)) + square(min(long_w) - max(long_w))), 4) as decimal(36,4)) as EuclideanDistance
from station