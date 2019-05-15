
select city, len(city)
from station
where city = (
    select min(city)
    from station
    where len(city) = (
        select min(len(city))
        from station
        )
    )
order by city asc;

select city, len(city)
from station
where city = (
    select max(city)
    from station
    where len(city) = (
        select max(len(city))
        from station
    )
)
order by city desc;

