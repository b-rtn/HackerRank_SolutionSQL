
select distinct city
from station 
where not city like '[a, e, i, o, u]%[a, e, i, o, u]'