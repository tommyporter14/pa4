-- Paste your answers for each question in the appropriate spot below. (Keep the number headings)
-- #1
SELECT * FROM reviews WHERE box_ref_id= 2 AND rating > 2;

-- #2
UPDATE boxes SET ABOUT = "Local produce delivered to your doorstep" WHERE box_id =3;

-- #3
INSERT INTO reviews (title, review, rating, box_ref_id)
VALUES ('Thank you', 'Makes me happy and healthy', 5, 3);
INSERT INTO reviews (title, review, rating, box_ref_id)
VALUES ('Soggy', 'All the veggies were soggy', 2, 3);

-- #4
SELECT boxes.brand, reviews.title, reviews.review, reviews.rating FROM reviews
JOIN boxes ON reviews.box_ref_id = boxes.box_id
WHERE reviews.rating < 4;