-- Fizz buzz example with a while loop
-- set inital counter and value to get the required number of rows
DECLARE @i INT = 1
-- set how many rows you want
DECLARE @maxvalue int = 101
-- the variable to insert into the table variable
DECLARE @output nvarchar(8)
--table variable to hold the values
DECLARE @tablevarfb table (incrementer INT, fbvalues nvarchar(8))
--while loop parameter
WHILE @i < @maxvalue

BEGIN
--the actual assignment of variable
IF ( @i %3 = 0  and  @i %5 = 0) SET @output ='FizzBuzz'
ELSE IF @i %3 = 0  SET @output ='Fizz'
ELSE IF @i %5 = 0 SET @output ='Buzz'
--if not any of the above then set the value to the counter
ELSE SET @output = @i
-- insert the newly assigned variables into the table variable
INSERT INTO @tablevarfb (incrementer, fbvalues)
VALUES(@i, @output)
-- increment the counter
SET @i = @i + 1
-- clear out the output
SET @output = ''
END
-- final select from the final table
SELECT * FROM @tablevarfb