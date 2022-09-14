DECLARE @i int = 20
WHILE @i >= 1
BEGIN
	print replicate("* ",@i)
	set @i = @i - 1
end