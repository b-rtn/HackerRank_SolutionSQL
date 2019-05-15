
declare @number int
select @number = 20
while @number > 0
begin 
print replicate ('* ', @number)
set @number = @number - 1
end