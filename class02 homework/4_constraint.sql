--Update the Order table by adding constraint where it won’t allow an orderDate
--before 01.01.2010.
ALTER TABLE "Order"
ADD CONSTRAINT orderDateConstraint CHECK (orderDate >= '2010-01-01');


--Update the Product table by adding constraint where the price will always be AT
--LEAST 20% higher than the cost

--ERROR:  check constraint "priceconstraint" of relation "product" is violated by some row 
SELECT *
FROM product
WHERE price < cost * 1.20;

UPDATE product
SET price = cost * 1.20
WHERE price < cost * 1.20;

ALTER TABLE product
ADD CONSTRAINT priceConstraint CHECK (price >= cost * 1.20)



--Update the Product table by adding constraint where all description values will be
--UNIQUE.


----ERROR:  Key (description)=(Gluten Free description) is duplicated.could not create unique index "description_unique_constraint" 

SELECT description, COUNT(*) AS count
FROM product
GROUP BY description
HAVING COUNT(*) > 1;

SELECT * FROM product
WHERE description = 'Gluten Free description'

DELETE FROM product 
WHERE id = 13;
--ERROR:  Key (id)=(13) is still referenced from table "orderdetails".update or delete on table "product" violates foreign key constraint "fk_productid" on table "orderdetails"

UPDATE orderdetails
SET productid = 4
WHERE productid = 13;

DELETE FROM product
WHERE id = 13;

SELECT * FROM product
WHERE description = 'Multigrain description'

UPDATE orderdetails
SET productid = 5
WHERE productid = 12;

DELETE FROM product
WHERE id = 12;

ALTER TABLE product 
ADD CONSTRAINT descriptionUniqueConstraint 
UNIQUE (description);











