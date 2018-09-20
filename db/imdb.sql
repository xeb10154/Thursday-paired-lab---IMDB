--drops
DROP TABLE castings;
DROP TABLE stars;
DROP TABLE movies;


-- stars table
CREATE TABLE stars (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

--movies table
CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255)
);


--castings
CREATE TABLE castings (
  id SERIAL4 PRIMARY KEY,
  star_id INT4 REFERENCES stars(id) ON DELETE CASCADE,
  movie_id INT4 REFERENCES movies(id) ON DELETE CASCADE,
  fee INT4
);
