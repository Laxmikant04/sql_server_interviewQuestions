

WITH EMPLOYEECTE AS
(
	SELECT * ,ROW_NUMBER() OVER (PARTITION BY ID ORDER By ID) AS 'ROWNUMBER' FROM Employees
)

DELETE FROM Employees WHERE ROWNUMBER >1

https://www.youtube.com/watch?v=ynWgSZBoUkU&list=PL6n9fhu94yhXcztdLO7i6mdyaegC8CJwR&index=4