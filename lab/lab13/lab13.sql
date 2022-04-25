.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = 'blue' AND pet = 'dog';;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b 
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT students.seven FROM students, numbers 
  WHERE students.number = 7 AND numbers.'7' = 'True' AND students.time = numbers.time ;


CREATE TABLE favpets AS
  SELECT pet, COUNT(pet) AS tot FROM students group by pet ORDER BY tot desc LIMIT 10;

CREATE TABLE dog AS
  SELECT pet, COUNT(pet) FROM students WHERE pet = 'dog';


CREATE TABLE bluedog_agg AS
  SELECT song, COUNT(song) AS tot FROM bluedog_songs group by song ORDER BY tot desc;


CREATE TABLE instructor_obedience AS
  SELECT seven, instructor, COUNT(*) FROM students WHERE seven = '7' group by instructor;

