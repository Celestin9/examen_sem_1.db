-- Selects for 'genre' table
SELECT * FROM genre;
SELECT name, average_rating FROM genre;
SELECT name, popularity_rank, mainstream FROM genre;
SELECT description FROM genre WHERE average_rating > 4.0;
SELECT * FROM genre WHERE average_rating > 4.0;
SELECT * FROM genre WHERE mainstream = true;
SELECT title, AVG(average_rating) AS avg_rating FROM manga GROUP BY title HAVING AVG(average_rating) > 4.5;
SELECT title, release_date, total_chapters FROM manga WHERE release_date < '2010-01-01' AND total_chapters > 200;
SELECT genre_id, AVG(average_rating) AS avg_rating, SUM(total_chapters) AS total_chapters FROM manga GROUP BY genre_id HAVING AVG(average_rating) > 4.0 AND SUM(total_chapters) > 300;
SELECT title, release_date, AVG(average_rating) AS avg_rating FROM manga WHERE release_date > '2015-01-01' GROUP BY title, release_date HAVING AVG(average_rating) > 4.2;
SELECT authors_id, AVG(average_rating) AS avg_rating, SUM(total_chapters) AS total_authored_chapters FROM manga GROUP BY authors_id HAVING SUM(total_chapters) > 500 AND AVG(average_rating) > 4.0;


-- Selects for 'authors' table
SELECT * FROM authors;
SELECT name, most_recent_work_title FROM authors;
SELECT name, total_work_published FROM authors WHERE country = 'Japan';
SELECT name, total_work_published, most_recent_work_publication_date FROM authors;
SELECT * FROM authors WHERE country = 'Japan';
SELECT * FROM authors WHERE total_work_published > 15;
SELECT * FROM authors WHERE most_recent_work_publication_date > '2023-01-01';
SELECT a.country, COUNT(*) AS total_authors, AVG(a.total_work_published) AS avg_works_published FROM authors a GROUP BY a.country HAVING AVG(a.total_work_published) > 10;
SELECT id, name, country, total_work_published, most_recent_work_title, most_recent_work_publication_date FROM authors WHERE (country = 'Japan' OR country = 'Mexico') AND total_work_published > 20 ORDER BY most_recent_work_publication_date DESC;
SELECT country, COUNT(id) AS total_authors, SUM(total_work_published) AS total_works, AVG(total_work_published) AS avg_works_per_author FROM authors WHERE country = 'Japan' GROUP BY country;
SELECT a.name, a.country, a.total_work_published, a.most_recent_work_title, a.most_recent_work_publication_date
FROM authors a
JOIN (
    SELECT country
    FROM authors
    GROUP BY country
    ORDER BY AVG(total_work_published) DESC
    LIMIT 1
) b ON a.country = b.country
WHERE a.most_recent_work_publication_date > '2023-01-01';

-- Selects for 'manga_publishers' table
SELECT * FROM manga_publishers;
SELECT id, name, year_founded FROM manga_publishers;
SELECT headquarters_city, employees_count FROM manga_publishers;
SELECT * FROM manga_publishers WHERE headquarters_city = 'Tokyo';
SELECT * FROM manga_publishers WHERE employees_count > 300;
SELECT * FROM manga_publishers WHERE headquarters_city = 'Tokyo' AND name like 'A%';
SELECT name FROM manga_publishers WHERE headquarters_city = 'Tokyo' GROUP BY name HAVING AVG(annual_revenue_yen) > 800000000;
SELECT name FROM manga_publishers WHERE employees_count > 200 AND headquarters_city = 'Tokyo';
SELECT name FROM manga_publishers WHERE name LIKE 'S%' GROUP BY name HAVING AVG(annual_revenue_yen) > 700000000;
SELECT headquarters_city, AVG(annual_revenue_yen) AS avg_annual_revenue_yen FROM manga_publishers WHERE headquarters_city = 'Tokyo' GROUP BY headquarters_city;
SELECT name FROM manga_publishers GROUP BY name HAVING SUM(annual_revenue_yen) > 1000000000;

-- Selects for 'manga' table
SELECT * FROM manga;
SELECT release_date FROM manga;
SELECT title, total_chapters FROM manga;
SELECT id, title, release_date, total_chapters, average_rating FROM manga;
SELECT * FROM manga WHERE average_rating > 4.5;
SELECT * FROM manga WHERE total_chapters > 200;
SELECT title, AVG(average_rating) AS avg_rating FROM manga GROUP BY title HAVING AVG(average_rating) > 4.5;
SELECT title, release_date, total_chapters FROM manga WHERE release_date < '2010-01-01' AND total_chapters > 200;
SELECT genre_id, AVG(average_rating) AS avg_rating, SUM(total_chapters) AS total_chapters FROM manga GROUP BY genre_id HAVING AVG(average_rating) > 4.0 AND SUM(total_chapters) > 300;
SELECT title, release_date, AVG(average_rating) AS avg_rating FROM manga WHERE release_date > '2015-01-01' GROUP BY title, release_date HAVING AVG(average_rating) > 4.2;
SELECT authors_id, AVG(average_rating) AS avg_rating, SUM(total_chapters) AS total_authored_chapters FROM manga GROUP BY authors_id HAVING SUM(total_chapters) > 500 AND AVG(average_rating) > 4.0;

-- Selects for 'readers' table
SELECT * FROM readers;
SELECT id, name, email, country, monthly_reads_count FROM readers;
SELECT * FROM readers WHERE country = 'USA';
SELECT * FROM readers WHERE monthly_reads_count > 30;
SELECT * FROM readers WHERE country IN ('South Korea', 'Japan');
SELECT name, email FROM readers WHERE country IN (
    SELECT country FROM readers GROUP BY country HAVING AVG(monthly_reads_count) > 25);
SELECT country FROM readers GROUP BY country HAVING AVG(monthly_reads_count) > 30;
SELECT country FROM readers GROUP BY country HAVING COUNT(id) > 1 AND AVG(monthly_reads_count) > 28;
SELECT name FROM readers WHERE monthly_reads_count > ( SELECT AVG(monthly_reads_count) FROM readers AS r WHERE r.country = readers.country);
SELECT country FROM readers GROUP BY country HAVING SUM(monthly_reads_count) > 100;

--Selects for 'readers_subscriptions' table
SELECT * FROM readers_subscriptions;
SELECT * FROM readers_subscriptions WHERE readers_id = 3;
SELECT * FROM readers_subscriptions  WHERE end_date <= CURRENT_DATE;
SELECT * FROM readers_subscriptions WHERE subscription_plan = 'Premium Plan';
SELECT * FROM readers_subscriptions WHERE start_date <= CURRENT_DATE AND end_date >= CURRENT_DATE;
SELECT COUNT(*) AS total_subscriptions FROM readers_subscriptions;
SELECT subscription_plan, COUNT(*) AS plan_count  FROM readers_subscriptions  GROUP BY subscription_plan;
SELECT MAX(end_date) AS max_active_subscription_end_date  FROM readers_subscriptions WHERE start_date <= CURRENT_DATE AND end_date >= CURRENT_DATE;
SELECT MIN(start_date) AS earliest_subscription_start_date FROM readers_subscriptions;
SELECT AVG(end_date - start_date) AS avg_subscription_duration FROM readers_subscriptions;

--Selects for 'readers_list' table
SELECT * FROM readers_list;
SELECT id, readers_id, manga_id, review_score FROM readers_list;
SELECT * FROM readers_list WHERE review_score > 4.5;
SELECT * FROM readers_list WHERE manga_id = 3;
SELECT AVG(review_score) AS avg_review_score FROM readers_list;
SELECT * FROM readers_list WHERE date_read BETWEEN '2024-01-01' AND '2025-01-01';
SELECT manga_id, AVG(review_score) AS avg_review_score FROM readers_list GROUP BY manga_id;
SELECT manga_id, AVG(review_score) AS avg_review_score FROM readers_list GROUP BY manga_id ORDER BY avg_review_score DESC LIMIT 1;
SELECT manga_id, COUNT(DISTINCT readers_id) AS num_readers FROM readers_list GROUP BY manga_id;
SELECT manga_id, AVG(review_score) AS avg_review_score, COUNT(*) AS num_reviews FROM readers_list GROUP BY manga_id;
SELECT manga_id, AVG(review_score) AS avg_review_score
FROM readers_list
GROUP BY manga_id
HAVING AVG(review_score) > 4.0 AND COUNT(*) >= 3;

-- Selects for 'editors' table
SELECT * FROM editors;
SELECT id, name, birthdate, country, editorial_experience_years, projects_managed_count FROM editors WHERE country = 'Japan' AND editorial_experience_years > 11;
SELECT * FROM editors WHERE country = 'Japan' AND editorial_experience_years > 15;
SELECT * FROM editors WHERE birthdate BETWEEN '1980-01-01' AND '1989-12-31' AND projects_managed_count > 25;
SELECT country, AVG(editorial_experience_years) AS avg_experience FROM editors GROUP BY country HAVING AVG(editorial_experience_years) >= 15;
SELECT * FROM editors ORDER BY projects_managed_count DESC LIMIT 5;
SELECT country, AVG(editorial_experience_years) AS avg_experience FROM editors GROUP BY country;
SELECT country, AVG(editorial_experience_years) AS avg_experience FROM editors GROUP BY country ORDER BY avg_experience DESC LIMIT 1;
SELECT country, SUM(projects_managed_count) AS total_projects FROM editors GROUP BY country;
SELECT id, name, MAX(projects_managed_count) AS max_projects_managed FROM editors;
SELECT EXTRACT(DECADE FROM birthdate) AS decade, COUNT(*) AS editor_count FROM editors GROUP BY decade;

-- Selects for the 'manga_volumes' table
SELECT * FROM manga_volumes;
SELECT manga_id, SUM(total_pages) AS total_pages, AVG(price) AS avg_price FROM manga_volumes GROUP BY manga_id;
SELECT * FROM manga_volumes WHERE EXTRACT(YEAR FROM release_date) = 2023 AND total_pages > 200;
SELECT * FROM manga_volumes WHERE price > 13.99;
SELECT * FROM manga_volumes ORDER BY price DESC LIMIT 1;
SELECT SUM(total_pages) AS total_pages FROM manga_volumes;
SELECT AVG(price) AS avg_price FROM manga_volumes WHERE EXTRACT(YEAR FROM release_date) = 2024;
SELECT manga_id, COUNT(*) AS volume_count FROM manga_volumes GROUP BY manga_id;
SELECT SUM(total_pages * price) AS total_revenue FROM manga_volumes;
SELECT manga_id, AVG(price) AS avg_price FROM manga_volumes GROUP BY manga_id ORDER BY avg_price DESC LIMIT 1;

-- Selects for 'manga_chapters' table
SELECT * FROM manga_chapters;
SELECT * FROM manga_chapters WHERE average_rating > 4.2;
SELECT manga_volumes_id, SUM(pages) AS total_pages, AVG(average_rating) AS avg_rating FROM manga_chapters GROUP BY manga_volumes_id;
SELECT * FROM manga_chapters WHERE pages > 30;
SELECT * FROM manga_chapters ORDER BY average_rating DESC LIMIT 1;
SELECT COUNT(*) AS total_chapters FROM manga_chapters;
SELECT AVG(pages) AS avg_pages FROM manga_chapters;
SELECT MAX(average_rating) AS max_avg_rating FROM manga_chapters;
SELECT manga_volumes_id, COUNT(*) AS chapter_count FROM manga_chapters GROUP BY manga_volumes_id;
SELECT SUM(pages) AS total_pages_high_rating FROM manga_chapters WHERE average_rating > 4.0; 




























