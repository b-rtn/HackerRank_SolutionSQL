
select cast(round(long_w, 4) as decimal(36, 4)) as sumLong
from station
where Lat_N = (
    select max(lat_N)
    from station
    where lat_N < 137.2345
)