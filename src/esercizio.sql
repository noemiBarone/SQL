
/* Esercizio 1*/
CREATE TABLE MEAL (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CALORIES INT
);

CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
);

/* Esercizio 2*/
INSERT INTO INGREDIENT (NAME,PRICE, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Eggs',0.50, false, true, false, true);

INSERT INTO INGREDIENT (NAME, PRICE, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Bread', 1.00, false, true, true, false);

INSERT INTO INGREDIENT (NAME, PRICE, CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Beef Patty',1.50, false, false, false, true);

INSERT INTO INGREDIENT (NAME,PRICE,CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Lettuce',0.20, false, true, true, true);

INSERT INTO INGREDIENT (NAME,PRICE,CONTAINS_LACTOSE, VEGETARIAN, VEGAN, GLUTEN_FREE)
VALUES ('Yoghurt',1.00, true, true, false, true);



INSERT INTO MEAL(NAME, PRICE, CALORIES)
VALUES ('Spaghetti Bolognese', 12.99, 600),
('Grilled Chicken Sandwich', 8.99, 400),
('Pesto Pasta', 10.99, 550),
('Steak and Mash', 19.99, 800),
('Sushi Platter', 15.99, 700);

/* Esercizio 4 */
CREATE TABLE CHEAP_MEALS AS
SELECT * FROM MEAL WHERE PRICE <= 15;

CREATE TABLE VEGAN_INGREDIENT AS
SELECT * FROM INGREDIENT WHERE FALSE;

INSERT INTO VEGAN_INGREDIENT
SELECT * FROM INGREDIENT WHERE VEGAN;

CREATE VIEW EXPENSIVE_MEAL AS
SELECT * FROM MEAL WHERE PRICE >= 15;

CREATE VIEW LACTOSE_FREE_INGREDIENT AS
SELECT * FROM INGREDIENT WHERE !CONTAINS_LACTOSE;

CREATE TABLE HIGH_CALORIE_MEAL AS
SELECT * FROM MEAL WHERE CALORIES >= 650;