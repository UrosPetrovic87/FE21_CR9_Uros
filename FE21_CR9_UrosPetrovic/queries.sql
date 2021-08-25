-- What payment methods are possible:
-- SELECT * FROM payment;


-- How many items are sold from suplier 1 (mercedes)
-- SELECT SUM(quantity) 
-- 	FROM cart WHERE supplier_id = 1


-- Which suoplier id have name Mercedes
-- SELECT supplier_id FROM supplier WHERE name='Mercedes'


-- Wich supplier sells wich item
-- SELECT supplier.name, item.name FROM supplier 
-- LEFT JOIN item on supplier.supplier_id=item.supplier_id


-- Wich customer is from wich country
-- SELECT account.first_name, adress.country FROM customer
-- LEFT JOIN account on customer.account_id=account.account_id
-- LEFT JOIN adress on account.adress_id=adress.adress_id


-- SELECT * FROM cart 
-- LEFT JOIN ship_company on cart.ship_company_id=ship_company.ship_company_id



-- All companies that shipped Mercedes
-- SELECT DISTINCT cart.ship_company_id FROM cart 
-- LEFT JOIN ship_company on cart.ship_company_id=ship_company.ship_company_id 
-- WHERE supplier_id=1