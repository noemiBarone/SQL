
#Using the INGREDIENT and MEAL tables, write a query to return the name of all meals that contain garlic

select * from MEAL m
inner join INGREDIENT i  on m.MEAL_ID = i.MEAL_ID
where i.NAME = 'Garlic'
order BY m.NAME;


#Using the INGREDIENT and MEAL tables, write a query to return the number of meals with vegetarian ingredients

select count(distinct M.NAME) as MEALS_WITH_VEGETARIAN_INGREDIENTS from meal m
inner join ingredient i on M.MEAL_ID = I.MEAL_ID
where VEGETARIAN;


#Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have at least 1 gluten free ingredient and at least 1 vegan ingredient.

select m.NAME from MEAL m
inner join INGREDIENT i  on m.MEAL_ID = i.MEAL_ID
where i.VEGAN  and i.GLUTEN_FREE
GROUP BY m.NAME;


#Using the INGREDIENT and MEAL tables, write a query to return the average number of ingredients per meal.

select COUNT(I.NAME) / COUNT(distinct M.NAME) as AVERAGE_INGREDIENTS_NUMBER_PER_MEAL from meal m
inner join ingredient i on M.MEAL_ID = I.MEAL_ID;


#Using the INGREDIENT and MEAL tables, write a query to return the names of meals that have more than 3 ingredients.

SELECT m.NAME FROM MEAL m
inner join INGREDIENT i  on m.MEAL_ID = i.MEAL_ID
GROUP BY m.NAME HAVING COUNT(i.NAME) > 3;


#Using the following table definitions, write an inner join for the two tables

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT,
    NAME VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE ORDER (
    ORDER_ID INT,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    TOTAL_COST DECIMAL(10,2)
);

SELECT * FROM CUSTOMER
inner join ORDER ON CUSTOMER.CUSTOMER_ID = ORDER.CUSTOMER_ID;



#Using the following table definitions, write an inner join for the two tables
CREATE TABLE PRODUCT (
    PRODUCT_ID INT,
    NAME VARCHAR(255),
    PRICE DECIMAL(10,2)
);
CREATE TABLE INVENTORY (
    PRODUCT_ID INT,
    STORE_ID INT,
    QUANTITY INT
);

SELECT * FROM PRODUCT
inner join INVENTORY ON PRODUCT.PRODUCT_ID = INVENTORY.PRODUCT_ID;
