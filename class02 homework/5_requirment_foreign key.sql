--Create Foreign key constraints for order_id and product_id in the
--OrderDetails


ALTER TABLE orderdetails
ADD CONSTRAINT fk_orderid
FOREIGN KEY (orderid) 
REFERENCES "Order" (id);


ALTER TABLE orderdetails
ADD CONSTRAINT fk_productid
FOREIGN KEY (productid) 
REFERENCES Product (id);






