--List all Business Entity region and Customer region names in single result set
--WITH duplicates

SELECT region as customersRegion
FROM businessentity
UNION ALL
SELECT regionname as customersRegion
FROM customer;


--List all Business Entity region and Customer region names in single result set
--WITHOUT duplicates
SELECT region as customersRegion
FROM businessentity
UNION
SELECT regionname as customersRegion
FROM customer;


--List all common region names between Business Entities and Customers
SELECT region AS commonregion
FROM businessentity
INTERSECT
SELECT regionname as commonregion
FROM customer;




