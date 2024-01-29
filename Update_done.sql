-- Updates for 'genre' table
UPDATE genre SET description = 'Exciting and fast-paced stories with intense action scenes.' WHERE id = 1;
UPDATE genre SET popularity_rank = popularity_rank -51 WHERE id = 2;
UPDATE genre SET average_rating = 4.2 WHERE id = 3;
UPDATE genre SET mainstream = NOT mainstream WHERE id = 4;
UPDATE genre SET average_rating = 4.5 WHERE id = 5;
UPDATE genre SET average_rating = 3.5 WHERE id = 6;
UPDATE genre SET mainstream = NOT mainstream WHERE id = 7;
UPDATE genre SET average_rating = 4.3 WHERE id = 8;
UPDATE genre SET mainstream = NOT mainstream WHERE id = 9;
UPDATE genre SET description = 'Set in historical periods or events with a focus on authenticity.' WHERE id = 10;

-- Updates for 'authors' table
UPDATE authors SET country = 'Canada', total_work_published = total_work_published + 1 WHERE id = 17;
UPDATE authors SET most_recent_work_title = 'Dance of Shadows', most_recent_work_publication_date = '2023-04-15' WHERE id = 9;
UPDATE authors SET total_work_published = total_work_published + 2 WHERE id = 20;
UPDATE authors SET country = 'Argentina', most_recent_work_title = 'Whispers in Buenos Aires', most_recent_work_publication_date = '2024-01-10' WHERE id = 4;
UPDATE authors SET total_work_published = total_work_published + 3 WHERE id = 13;
UPDATE authors SET most_recent_work_title = 'Silk Road Serenade', most_recent_work_publication_date = '2024-07-30' WHERE id = 22; 
UPDATE authors SET total_work_published = total_work_published + 1 WHERE id = 1;
UPDATE authors SET country = 'Austria', total_work_published = total_work_published + 2, most_recent_work_title = 'Vienna Chronicles', most_recent_work_publication_date = '2024-04-05' WHERE id = 7;
UPDATE authors SET most_recent_work_title = 'Lisbon Lullaby', most_recent_work_publication_date = '2023-11-05' WHERE id = 11;
UPDATE authors SET total_work_published = total_work_published + 1 WHERE id = 19;

-- Updates for 'manga_publishers' table
UPDATE manga_publishers SET headquarters_city = 'Osaka', employees_count = 550 WHERE id = 17;
UPDATE manga_publishers SET annual_revenue_yen = 1250000000 WHERE id = 23;
UPDATE manga_publishers SET headquarters_city = 'Kyoto', employees_count = 600 WHERE id = 13;
UPDATE manga_publishers SET annual_revenue_yen = 950000000 WHERE id = 24;
UPDATE manga_publishers SET headquarters_city = 'San Francisco', annual_revenue_yen = 850000000 WHERE id = 15;
UPDATE manga_publishers SET employees_count = 450 WHERE id = 36;
UPDATE manga_publishers SET headquarters_city = 'Saitama', annual_revenue_yen = 1600000000 WHERE id = 47;
UPDATE manga_publishers SET employees_count = 270 WHERE id = 18;
UPDATE manga_publishers SET headquarters_city = 'Nagoya', annual_revenue_yen = 900000000 WHERE id = 9;
UPDATE manga_publishers SET headquarters_city = 'Sapporo', employees_count = 320 WHERE id = 30;

-- Updates for 'manga' table
UPDATE manga SET average_rating = 4.8 WHERE id = 31;
UPDATE manga SET release_date = '1997-07-19' WHERE id = 42;
UPDATE manga SET total_chapters = 110 WHERE id = 33;
UPDATE manga SET genre_id = 1, average_rating = 4.7 WHERE id = 14;
UPDATE manga SET manga_publishers_id = 6 WHERE id = 25;
UPDATE manga SET total_chapters = 550, average_rating = 4.4 WHERE id = 6; UPDATE manga SET release_date = '2016-02-10' WHERE id = 7;
UPDATE manga SET average_rating = 4.75 WHERE id = 48;
UPDATE manga SET total_chapters = 170 WHERE id = 9;
UPDATE manga SET authors_id = 11 WHERE id = 20;

-- Updates for 'readers' table
UPDATE readers SET email = REPLACE(email, 'example.com', 'yahoo.com');
UPDATE readers SET monthly_reads_count = 32 WHERE id = 11;
UPDATE readers SET country = 'United States'WHERE id = 22;
UPDATE readers SET monthly_reads_count = 38 WHERE id = 23;
UPDATE readers SET email = 'david.miller@yahoo.com' WHERE id = 4;
UPDATE readers SET monthly_reads_count = 40 WHERE id = 15;
UPDATE readers SET country = 'Italy' WHERE id = 26;
UPDATE readers SET monthly_reads_count = 25 WHERE id = 37;
UPDATE readers SET email = 'harry.lee@yahoo.com' WHERE id = 28;
UPDATE readers SET country = 'Taiwan' WHERE id = 49;

-- Updates for 'readers_subscriptions' table
UPDATE readers_subscriptions SET end_date = '2022-12-15', subscription_plan = 'Premium Plan' WHERE id = 13;
UPDATE readers_subscriptions SET start_date = '2022-03-01', subscription_plan = 'Basic Plan' WHERE id = 45;
UPDATE readers_subscriptions SET start_date = '2022-04-01', end_date = '2022-11-01', subscription_plan = 'Standard Plan' WHERE id = 26; 
UPDATE readers_subscriptions SET end_date = '2022-09-30' WHERE id = 21;
UPDATE readers_subscriptions SET start_date = '2022-06-01', end_date = '2022-08-15' WHERE id = 11; 
UPDATE readers_subscriptions SET start_date = '2022-07-01', subscription_plan = 'Basic Plan' WHERE id = 39;
UPDATE readers_subscriptions SET subscription_plan = 'Premium Plan' WHERE id = 41;
UPDATE readers_subscriptions SET start_date = '2022-09-01', end_date = '2022-12-01' WHERE id = 14;
UPDATE readers_subscriptions SET end_date = '2022-10-15' WHERE id = 9; 
UPDATE readers_subscriptions SET subscription_plan = 'Standard Plan' WHERE id = 38;

--Updates for 'readers_list' table
UPDATE readers_list SET review_score = 4.8, review_text = 'Absolutely loved it, a masterpiece!' WHERE id = 41;
UPDATE readers_list SET date_read = '2022-03-15', review_score = 4.5 WHERE id = 22;
UPDATE readers_list SET review_score = 4.0, review_text = 'Enjoyable, but expected more twists.' WHERE id = 13;
UPDATE readers_list SET review_score = 4.2 WHERE id = 49;
UPDATE readers_list SET review_text = 'Incredible world-building, eagerly waiting for the sequel.' WHERE id = 35;
UPDATE readers_list SET review_score = 3.5, review_text = 'Ending felt abrupt, hoping for a continuation.' WHERE id = 16;
UPDATE readers_list SET review_score = 4.9 WHERE id = 37; 
UPDATE readers_list SET review_score = 4.5, review_text = 'Unexpected plot twists kept me hooked.' WHERE id = 38;
UPDATE readers_list SET review_text = 'Action-packed with intense moments, a must-read for manga fans.' WHERE id = 9;
UPDATE readers_list SET date_read = '2022-11-01', review_score = 4.2 WHERE id = 30;

-- Updates for 'editors' table
UPDATE editors SET editorial_experience_years = 16, projects_managed_count = 35 WHERE id = 31;
UPDATE editors SET country = 'Australia', projects_managed_count = 27 WHERE id = 42;
UPDATE editors SET birthdate = '1975-01-15', editorial_experience_years = 20 WHERE id = 33;
UPDATE editors SET projects_managed_count = 22 WHERE id = 14;
UPDATE editors SET editorial_experience_years = 15, projects_managed_count = 30 WHERE id = 25;
UPDATE editors SET editorial_experience_years = 18 WHERE id = 46;
UPDATE editors SET birthdate = '1983-09-10', projects_managed_count = 25 WHERE id = 17; 
UPDATE editors SET projects_managed_count = 45 WHERE id = 48;
UPDATE editors SET editorial_experience_years = 12, projects_managed_count = 18 WHERE id = 19; 
UPDATE editors SET birthdate = '1984-07-15', country = 'Mexico' WHERE id = 10;


-- Updates for the 'manga_volumes' table
UPDATE manga_volumes SET total_pages = 220, price = 14.99 WHERE id = 33;
UPDATE manga_volumes SET release_date = '2022-03-01', total_pages = 200 WHERE id = 47;
UPDATE manga_volumes SET release_date = '2022-03-15', total_pages = 230, price = 15.99 WHERE id = 29;
UPDATE manga_volumes SET price = 12.99 WHERE id = 15;
UPDATE manga_volumes SET total_pages = 200, price = 12.99 WHERE id = 9;
UPDATE manga_volumes SET release_date = '2022-06-20', price = 11.99 WHERE id = 23;
UPDATE manga_volumes SET release_date = '2022-07-02', total_pages = 210 WHERE id = 12;
UPDATE manga_volumes SET release_date = '2022-08-13', total_pages = 220, price = 14.99 WHERE id = 41; 
UPDATE manga_volumes SET release_date = '2022-09-26', price = 13.99 WHERE id = 32;
UPDATE manga_volumes SET total_pages = 220, price = 15.99 WHERE id = 19;

-- Updates for 'manga_chapters' table
UPDATE manga_chapters SET pages = 35, average_rating = 4.8 WHERE id = 35;
UPDATE manga_chapters SET title = 'Chapter 10: The Turning Tide', pages = 32, average_rating = 4.1 WHERE id = 16;
UPDATE manga_chapters SET pages = 28, average_rating = 4.3 WHERE id = 28;
UPDATE manga_chapters SET title = 'Chapter 16: Revelations', pages = 30, average_rating = 4.5 WHERE id = 30;
UPDATE manga_chapters SET pages = 33, average_rating = 4.2 WHERE id = 33;
UPDATE manga_chapters SET title = 'Chapter 2: Echoes of the Present', pages = 27, average_rating = 4.0 WHERE id = 2;
UPDATE manga_chapters SET pages = 31, average_rating = 4.4 WHERE id = 31;
UPDATE manga_chapters SET title = 'Chapter 2: Crossroads', pages = 29, average_rating = 4.2 WHERE id =9;
UPDATE manga_chapters SET pages = 34, average_rating = 4.6 WHERE id = 46; 
UPDATE manga_chapters SET title = 'Chapter 10: Resurgence', pages = 28, average_rating = 4.3 WHERE id = 43;
















