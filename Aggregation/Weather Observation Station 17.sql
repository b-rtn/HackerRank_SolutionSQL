
select cast(round(long_w, 4) as decimal(36,4)) as longW
from station
where lat_N = (
    select min(lat_n)
    from station
    where lat_n > 38.7780
)