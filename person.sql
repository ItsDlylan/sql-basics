-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
CREATE TABLE person1 (
  id SERIAL PRIMARY KEY,
  person_name VARCHAR(15),
  age INT,
  height NUMERIC(9, 2), 
  city VARCHAR(25),
  favorite_color VARCHAR(30)
);


-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person1 (person_name, age, height, city, favorite_color)
VALUES ('name1', 13, 130, 'ThisCity', 'Orange');
INSERT INTO person1 (person_name, age, height, city, favorite_color)
VALUES ('name2', 14, 150.48, 'Salt Lake City', 'Red');
INSERT INTO person1 (person_name, age, height, city, favorite_color)
VALUES ('name3', 15, 172.90, 'Las Vegas', 'Orange');
INSERT INTO person1 (person_name, age, height, city, favorite_color)
VALUES ('name4', 16, 102.02, 'ThisCity', 'Yellow');
INSERT INTO person1 (person_name, age, height, city, favorite_color)
VALUES ('name5', 17, 100, 'Dwarf Town', 'Blue');
INSERT INTO person1 (person_name, age, height, city, favorite_color)
VALUES ('name6', 18, 210, 'ThisCity', 'Orange');
-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person1
ORDER BY height DESC;
-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person1
ORDER BY height ASC;
-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person1
ORDER BY age DESC;
-- Select all the people in the person table older than age 20.
WHERE age > 20;
-- Select all the people in the person table that are exactly 18.
WHERE age = 18;
-- Select all the people in the person table that are less than 20 and older than 30.
WHERE age > 30 AND age < 20;
-- Select all the people in the person table that are not 27 (use not equals).
WHERE age NOT 27;
-- Select all the people in the person table where their favorite color is not red.
WHERE favorite_color NOT 'red';
-- Select all the people in the person table where their favorite color is not red and is not blue.
WHERE favorite_color NOT 'red' AND favorite_color NOT 'blue' ;
-- Select all the people in the person table where their favorite color is orange or green.
WHERE favorite_color 'orange' OR favorite_color 'green';
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
WHERE favorite_color IN('Orange','Green', 'Blue');
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
WHERE favorite_color IN('Yellow', 'Purple');
