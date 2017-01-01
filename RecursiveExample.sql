 --FIZZ BUZZ Recursive Example
 --The table declared outside the CTE gives the recursion
 ;WITH FizzBuzzCTE( Rownumber ) AS (
 SELECT 1 UNION ALL
 SELECT 1 + rownumber FROM FizzBuzzCTE WHERE rownumber < 100
 )
  SELECT FizzBuzz
  = 
  CASE 
    WHEN rownumber % 3 = 0 AND rownumber % 5 = 0 THEN 'FizzBuzz'
    WHEN rownumber % 3 = 0 THEN 'Fizz'
    WHEN rownumber % 5 = 0 THEN 'Buzz'
    --Convert the number into a string
     ELSE CAST(rownumber as nvarchar(3)
   ) END
 FROM FizzBuzzCTE