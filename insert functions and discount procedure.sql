--insert functions for salesman and customer tables

CREATE OR REPLACE FUNCTION salesman(_salesman_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salesman(salesman_id,first_name,last_name)
	VALUES(_salesman_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;

--------------------------------------------------------------

CREATE OR REPLACE FUNCTION customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _email VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name, email)
	VALUES(_customer_id, _first_name, _last_name, _email);
END;
$MAIN$
LANGUAGE plpgsql;

--procedure function to add a dicsount to the total price in the invoice table

create or replace procedure newPrice(
	priceOff integer
)
language plpgsql
as $$
BEGIN
	update invoice
	set total_cost = invoice.total_cost - priceOff;
	commit;
END;
$$

call newprice(20);

select *
from invoice;

--simple alter method

ALTER TABLE customer ADD COLUMN email varchar(90);
