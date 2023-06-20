CREATE TABLE INGREDIENT (
  NAME VARCHAR(255),
  PRICE DOUBLE,
  CONTAINS_LACTOSE BOOLEAN,
  VEGETARIAN BOOLEAN,
  VEGAN BOOLEAN,
  GLUTEN_FREE BOOLEAN
);


#1
ALTER TABLE INGREDIENT
ADD CONSTRAINT UNIQUE(NAME)

#2
ALTER TABLE INGREDIENT
MODIFY NAME VARCHAR(255) not null;

#3
ALTER TABLE INGREDIENT
MODIFY PRICE DOUBLE not null;

#4
ALTER TABLE INGREDIENT
MODIFY CONTAINS_LACTOSE BOOLEAN not null;

#5
ALTER TABLE INGREDIENT
MODIFY VEGETARIAN BOOLEAN not null;

#6
ALTER TABLE INGREDIENT
MODIFY VEGAN BOOLEAN not null;

#7
ALTER TABLE INGREDIENT
ADD CONSTRAINT UNIQUE(NAME)
MODIFY GLUTEN_FREE not null

