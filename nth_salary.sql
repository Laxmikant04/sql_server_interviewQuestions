
-- using sub query
select top 1 Salary from
	(select distinct top N Salary from Employees order by Salary desc) As result
order by Salary 

--using CTE )common table expression

WITH RESULT AS
	(
		select salary ,DENSE_RANK() OVER (ORDER BY Salary DESC) AS DENSERANK 
		FROM Employees
	)
SELECT TOP 1 salary FROM RESULT WHERE RESULT.DENSERANK= N	