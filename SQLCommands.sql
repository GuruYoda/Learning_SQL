--'Creating new TABLE'
--\* BASICS COURSE */
CREATE TABLE EmployeeDemographics
(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE EmployeeSalary
(
EmployeeID int,
JobTitle varchar(50),
Salary int,
)

--HardRefresh Ctrl+Shift+R

'Inserting data into TABLE'
INSERT INTO EmployeeDemographics VALUES
(
1001, 'Jim', 'Halpert', 30, 'Male'
)


--'SELECT AND FROM Statement'
SELECT TOP 5 *
SELECT DISTINCT(Gender) //'The number of distincr resulta are returned'
SELECT COUNT(LastName) AS LastNameCount
SELECT MAX/MIN/AVG(Salary)

--'WHERE and LIKE are also super easy to use
--we can query just a small portion of our complete 
--data using these
--Eg. WHERE LastName LIKE '%d%' ( this query will return all the lastnames which hade d somewhere)
--WHERE Age <= 23 AND/OR LastName LIKE '%d''


WHERE FirstName in NULL 'returns all the fielsd in the data which have firstname Null'
WHERE FirstName is NOT NULL 'returns all the fields in the last name column which are not NULL'

WHERE FirstName IN ('Jim', 'Michael')

--\* GROUP BY Statement */
--' This statement is useful if zou want to have an overview 
--of the data in the columnsThe query rolls all the data 
--i.e groups all the data of the query'



--###Limits
/*LIMIT is a keyword available in SQL to limit the rows of a query*/
SELECT accout_id, [money], "funds"
FROM cleints
LIMIT 10;

--###OrderBy
/*ORDER BY Keyword is used to reorder the query in ascending order by DEFAULT i.e. a-z or 1-9
but if the query is to be ordered in descending order, a DESC can be added to the 
end of the query*/
SELECT account_it, occured_at
FROM orders
ORDER BY occured_at DESC
LIMIT 20;

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY account_id, total_amt_usd DESC;

--###WHERE
/* This keyword sherched and queries on the data that satisfies the applied condition in 
the selected column 
Common operations are (<> is the not equal to operator), BETWEEN ,
=,>,< when using non character data but when using character data use '__d%__'*/
SELECT account_it, occured_at
FROM orders
WHERE account_id = 1222
ORDER BY occured_at DESC
LIMIT 20;

SELECT *
FROM orders
WHERE gloss_amt_usd >= 1000
ORDER BY gloss_amt_usd
LIMIT 5;


--### AS is used simply to create a derived data from the already available columns in the table when making a query
SELECT a,b,a+b AS c
FROM orders
WHERE gloss_amt_usd <= 500
ORDER BY gloss_amt_usd
LIMIT 10;

--### LIKE is used also as a comparision operator but is more powerful
SELECT *
FROM orders
WHERE gloss_amt_usd LIKE '%t%'

--###IN also used with WHERE
SELECT *
FROM orders
WHERE gloss_amt_usd IN (122,1222)

SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart','Target','Nordstorm');

SELECT *
FROM web_events
WHERE channel IN ('organic','adword')

--###NOT can be used in conjunction with IN and LIKE to get inverse of the query

--### AND, OR  is just like a logical operator
select *
from orders
where standard_qty BETWEEN 1000 AND 1001 and poster_qty = 0 and gloss_qty = 0
order by standard_qty;


--### JOINS
SELECT orders.*
FROM orders
JOIN accounts
ON orders.account_id = accounts.id;
/*FROM clause indicates the first table from which we're pulling data, and the JOIN indicates the second table. 
### The ON clause specifies the column on which you'd like to merge the two tables together */

INNER JOIN, 
FULL OUTER JOIN, 
LEFT OUTER JOIN, 
RIGHT OUTER JOIN

UNION
--this is used to join the data from 2 TABLES


CASE  
    WHEN ...... THEN .....
	ELSE
END

--*HAVING*
--This is used after we have done some mathematical operation on our DATABASE
--WHERE caluse cannot work on queries like AVG(salaries)
--Hence in such situations HAVING is really helpful
--But having must be used after the ORDER BY clause

UPDATE name of the tables
SET some field fromt he table = some DATA
WHERE some keys to identify the data

DELETE FROM name of the TABLE
WHERE field in the table = data
--'Deletion is permanent operation and the deleted data cannot be retrived'


COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender