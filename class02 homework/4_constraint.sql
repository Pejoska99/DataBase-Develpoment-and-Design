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

ALTER TABLE product 
ADD CONSTRAINT descriptionUniqueConstraint 
UNIQUE (description);
----ERROR:  Key (description)=(Gluten Free description) is duplicated.could not create unique index "description_unique_constraint" 









