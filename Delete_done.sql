-- Deletes for 'genre' table
DELETE FROM genre WHERE id = (SELECT MAX(id) FROM genre);
DELETE FROM genre WHERE (name LIKE '%Romance%' OR description LIKE '%love%') AND mainstream = true;
DELETE FROM genre WHERE popularity_rank = (SELECT MAX(popularity_rank) FROM genre WHERE mainstream = false);
DELETE FROM genre WHERE id = 5;
DELETE FROM genre  WHERE LENGTH(description) < (SELECT MIN(LENGTH(description)) FROM genre WHERE mainstream = false);
DELETE FROM genre WHERE name like '%Detective%';

-- Deletes for 'authors' table
DELETE FROM authors WHERE name = 'John Smith';
DELETE FROM authors WHERE id = 3;
DELETE FROM authors WHERE country = 'Argentina';
DELETE FROM authors WHERE id= 2 and total_work_published = 8;
DELETE FROM authors WHERE most_recent_work_title LIKE '%Whispers in Paris%';

--Deletes for 'manga_publishers' table
DELETE FROM manga_publishers WHERE id = 1;
DELETE FROM manga_publishers WHERE name = 'Shogakukan';
DELETE FROM manga_publishers WHERE year_founded = '1975';
DELETE FROM manga_publishers WHERE headquarters_city = 'Nagoya';
DELETE FROM manga_publishers WHERE id = 8 AND annual_revenue_yen = 700000000;

-- Deletes for 'manga' table
DELETE FROM manga WHERE id = 31;
DELETE FROM manga WHERE title = 'Jujutsu Kaisen';
DELETE FROM manga WHERE release_date = '2000-05-10';
DELETE FROM manga WHERE total_chapters = 64;
DELETE FROM manga WHERE average_rating = 4.28;

-- Deletes for 'readers' table
DELETE FROM readers WHERE id = 31;
DELETE FROM readers WHERE country = 'United States';
DELETE FROM readers WHERE country = 'Spain' AND monthly_reads_count =20;
DELETE FROM readers WHERE country = 'Canada' AND id =45;
DELETE FROM readers WHERE email = 'xander@yahoo.com';

-- Deletes for 'readers_subscriptions' table
DELETE FROM readers_subscriptions WHERE start_date < '2023-01-01';
DELETE FROM readers_subscriptions WHERE end_date BETWEEN '2022-01-01' AND '2022-12-31' AND subscription_plan = 'Basic Plan';
DELETE FROM readers_subscriptions WHERE readers_id % 2 = 0;
DELETE FROM readers_subscriptions WHERE start_date > '2024-12-31' AND subscription_plan = 'Premium Plan';
DELETE FROM readers_subscriptions WHERE end_date < '2025-01-01' AND subscription_plan = 'Standard Plan';
DELETE FROM readers_subscriptions rs WHERE rs.readers_id IN (SELECT id FROM readers WHERE monthly_reads_count < 25);
DELETE FROM readers_subscriptions WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31' AND subscription_plan = 'Premium Plan';
DELETE FROM readers_subscriptions rs WHERE rs.subscription_plan = 'Basic Plan' AND rs.readers_id IN (SELECT id FROM readers WHERE monthly_reads_count > 30);
DELETE FROM readers_subscriptions WHERE start_date BETWEEN '2026-01-01' AND '2026-12-31' AND subscription_plan = 'Basic Plan';

--Deletes for 'readers_list' table
DELETE FROM readers_list WHERE review_text = 'A masterpiece that stands the test of time.';
DELETE FROM readers_list WHERE LOWER(review_text) LIKE '%rushed%';
DELETE FROM readers_list WHERE review_score < 4.0;
DELETE FROM readers_list WHERE review_score = 4.5;
DELETE FROM readers_list WHERE review_score BETWEEN 4.0 AND 4.5;
DELETE FROM readers_list WHERE manga_id = 3;
DELETE FROM readers_list WHERE review_score > 4.7;
DELETE FROM readers_list WHERE id % 2 = 0;
DELETE FROM readers_list WHERE readers_id % 2 <> 0;
DELETE FROM readers_list WHERE review_score = 4.2 AND manga_id = 8;

-- Deletes for 'editors' table
DELETE FROM editors WHERE editorial_experience_years = 16 and id=22;
DELETE FROM editors WHERE birthdate = '1989-02-28';
DELETE FROM editors WHERE country = 'UAE';
DELETE FROM editors WHERE projects_managed_count = 22 and id= 49;
DELETE FROM editors WHERE country LIKE 'Ind%' and editorial_experience_years=15;

-- Deletes for the 'manga_volumes' table
DELETE FROM manga_volumes WHERE release_date ='2026-01-01';
DELETE FROM manga_volumes WHERE total_pages < 200;
DELETE FROM manga_volumes WHERE price > 13.99;
DELETE FROM manga_volumes WHERE id % 2 = 0;
DELETE FROM manga_volumes WHERE total_pages < 210;
DELETE FROM manga_volumes WHERE EXTRACT(YEAR FROM release_date) = 2024;
DELETE FROM manga_volumes WHERE price <= 12.99;
DELETE FROM manga_volumes WHERE total_pages = 200;
DELETE FROM manga_volumes WHERE id % 2 <> 0;
DELETE FROM manga_volumes WHERE release_date > '2025-01-01';

-- Deletes for 'manga_chapters' table
DELETE FROM manga_chapters WHERE title LIKE '%Chapter 22%';
DELETE FROM manga_chapters WHERE title LIKE '%Epilogue%';
DELETE FROM manga_chapters WHERE pages = 31 and average_rating = 4.40;
DELETE FROM manga_chapters WHERE average_rating < 4.0;
DELETE FROM manga_chapters WHERE id % 2 = 0;
DELETE FROM manga_chapters WHERE pages > 32;
DELETE FROM manga_chapters WHERE average_rating > 4.2;
DELETE FROM manga_chapters WHERE id % 2 <> 0;
DELETE FROM manga_chapters WHERE title LIKE '%Revelations%';
DELETE FROM manga_chapters WHERE average_rating < 4.3;






