
select max(doctor), max(professor), max(singer), max(actor)
from (
    select Row_Number() over(partition by Doctor, Professor, Singer, Actor order by name) as         RowNumber,
    case when Doctor=1 then name else Null end as Doctor,
    case when Professor=1 then name else Null end as Professor,
    case when Singer=1 then name else Null end as Singer,
    case when Actor=1 then name else Null end as Actor
    from occupations
    pivot(
        count(occupation)
        for occupation in(Doctor, Professor, Singer, Actor)
    ) as P
)temp
group by RowNumber