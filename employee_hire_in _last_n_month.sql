

select * , DATEDIFF(MONTH,HIREDATE,GETDATE()) AS DIFF
FROM Employees
WHERE  DATEDIFF(MONTH,HIREDATE,GETDATE()) BETWEEN 1 TO 5
ORDER BY HIREDATE DESC
