
/* Esercizio_1*/
CREATE TABLE MEAL (
 TIME_MEAL_ORDERED TIMESTAMP DEFAULT NOW()
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

/* Esercizio_2*/
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



  INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (NOW(), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 1 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 2 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 3 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 4 HOUR), 'Grilled Chicken Sandwich');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 5 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 6 HOUR), 'Spaghetti Bolognese');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 7 HOUR), 'Pesta Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 8 HOUR), 'Pesto Pasta');

    INSERT INTO MEAL_ORDER (TIME_MEAL_ORDERED, MEAL_NAME)
    VALUES (DATE_ADD(NOW(), INTERVAL 9 HOUR), 'Spaghetti Bolognese');


/* Esercizio_4 */
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

#Esercizio_5

CREATE VIEW MEAL_ORDER_WITH_DETAILS AS
    SELECT MO.*, M.PRICE, M.CALORIES FROM MEAL_ORDER MO, MEAL M
    WHERE MO.MEAL_NAME = M.NAME;