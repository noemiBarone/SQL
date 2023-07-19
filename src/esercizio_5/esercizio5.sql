 -- CONCAT takes a variable number of string arguments and concatenates (or joins) them into a single string
SELECT CONCAT(Main.INGREDIENT.NAME , Main.MEAL.NAME) AS LISTA_COMPLETA;

-- LOWER function converts all the letters in a string into lowercase
SELECT LOWER(Main.INGREDIENT.NAME) As INGREDIENT_NAME_LOWERCASE;

-- UPPER function converts all the letters in a string into uppercase
SELECT UPPER (Main.INGREDIENT.NAME) As INGREDIENT_NAME_UPPERCASE;

-- TRIM function removes the space character from both the start and the end of the string
SELECT TRIM (Main.INGREDIENT.NAME) As INGREDIENT_NAME_REMOVESPACE;

-- LENGTH() returns the number of characters in a given string
SELECT LENGTH (Main.MEAL.NAME) As MEAL_LENGTH_CHARACTERSNAME;

-- SUBSTRING() function extracts some characters from a string
SELECT SUBSTRING(MAIN.INGREDIENT.NAME, 2, 6) AS SUBSTRING_OF_NAMEINGREDIENT;

-- The ROUND() function rounds a number to a specified number of decimal places.
SELECT ROUND(Main.MEAL.PRICE, 2) As ROUND_PRICE_MEAL;

-- The DateAdd() function adds or subtracts a specified period(a number or signed integer) from a given date value
SELECT DATE_ADD(MAIN.MEAL_ORDER.TIME_MEAL_ORDERED, INTERVAL 6 HOUR) AS NEW_MODIFIED_DATE;

-- DATE_SUB() function subtracts a time/date interval from a date and then returns the date.
SELECT DATE_SUB(MAIN.MEAL_ORDER.TIME_MEAL_ORDERED, INTERVAL 10 DAY) AS SUBSTRACT_DATE;


-- FORMAT() function formats a value with the specified format
SELECT FORMAT(MAIN.MEAL_ORDER.TIME_MEAL_ORDERED, VARCHARACTER);


-- Select your birthday by passing the result into the next item
SELECT DATE_ADD(DATE_ADD(NOW(), INTERVAL 1 DAY), INTERVAL 0 MONTH) as BIRTHDAY_DATE;