
declare @num int
select @num = 1
while @num < 21
begin
print replicate('* ', @num)
set @num = @num + 1
end

