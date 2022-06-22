CREATE TABLE boxes (
  box_id SERIAL PRIMARY KEY,  brand VARCHAR(40),  about TEXT, type VARCHAR(20)
);
CREATE TABLE reviews (
  review_id SERIAL PRIMARY KEY,
  title VARCHAR(20),  review TEXT,  rating SMALLINT,  box_ref_id SMALLINT
);

INSERT INTO boxes (box_id, brand, about, type)
VALUES (1, 'Hello Fresh', 'Some text about HelloFresh', 'meal'), 
  (2, 'Butcher Box', 'Some text about Butcher Box', 'meat'),
  (3, 'Farm To People', 'Some text about Farm To People', 'veggie');
INSERT INTO reviews (title, review, rating, box_ref_id)
VALUES ('Hello Fresh is trash', 'I found trash in the box', 1, 1), 
  ('Meat masterpiece', 'Would recommend', 5, 2),
  ('Disaster', 'Parasites everywhere', 1, 2),
  ('Mediocre at best', 'Costco has better meats', 3, 2),
  ('Plants man', 'I love getting my plants delivered', 5, 3);
