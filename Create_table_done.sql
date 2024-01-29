CREATE TABLE IF NOT EXISTS genre(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(250) NOT NULL,
	description TEXT NOT NULL,
	popularity_rank INT UNIQUE NOT NULL,
	average_rating NUMERIC NOT NULL,
	mainstream BOOLEAN NOT NULL
); c

CREATE TABLE IF NOT EXISTS authors(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(100) NOT NULL,
	country VARCHAR(100) NOT NULL,
	total_work_published INT NOT NULL,
	most_recent_work_title VARCHAR(255) NOT NULL,
	most_recent_work_publication_date DATE NOT NULL	
);

CREATE TABLE IF NOT EXISTS manga_publishers(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(150) NOT NULL,
	year_founded CHAR(4) NOT NULL,
	headquarters_city VARCHAR(100) NOT NULL,
	employees_count INT NOT NULL,
	annual_revenue INT NOT NULL
);

CREATE TABLE IF NOT EXISTS manga(
	id INT PRIMARY KEY NOT NULL,
	title VARCHAR(255) NOT NULL,
	release_date DATE NOT NULL,
	total_chapters INT NOT NULL,
	average_rating DECIMAL(3, 2) NOT NULL,
	genre_id INT NOT NULL,
	manga_publishers_id INT NOT NULL,
	authors_id INT NOT NULL,
	foreign key(genre_id) references genre(id),
	foreign key(manga_publishers_id) references manga_publishers(id),
	foreign key(authors_id) references authors(id)
);

CREATE TABLE IF NOT EXISTS readers(
	id INT PRIMARY KEY NOT NULL,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL,
	country VARCHAR(50) NOT NULL,
	monthly_reads_count INT NOT NULL
);

CREATE TABLE IF NOT EXISTS readers_subscriptions(
	id INT PRIMARY KEY NOT NULL,
	readers_id INT NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	subscription_plan VARCHAR(50) NOT NULL,
	foreign key(readers_id) references readers(id)
);

CREATE TABLE IF NOT EXISTS readers_list(
	id INT PRIMARY KEY NOT NULL,
	readers_id INT NOT NULL,
	manga_id INT NOT NULL,
	date_read DATE NOT NULL,
	review_score NUMERIC NOT NULL,
	review_text TEXT NOT NULL,
	foreign key(readers_id) references readers(id),
	foreign key(manga_id) references manga(id)
);

CREATE TABLE IF NOT EXISTS manga_series_readers(
	id Serial PRIMARY KEY NOT NULL,
	readers_id INT NOT NULL,
	manga_id INT NOT NULL,
	foreign key(readers_id) references readers(id),
	foreign key(manga_id) references manga(id)
);

CREATE TABLE IF NOT EXISTS editors(
	id Serial PRIMARY KEY NOT NULL,
	name VARCHAR(200) NOT NULL,
	birthdate DATE NOT  NULL,
	country VARCHAR(50) NOT NULL,
	editorial_experience_years INT,
	projects_managed_count INT
);

CREATE TABLE IF NOT EXISTS manga_editors(
	id INT PRIMARY KEY NOT NULL,
	manga_id INT NOT NULL,
	editors_id INT NOT NULL,
	foreign key(manga_id) references manga(id),
	foreign key(editors_id) references editors(id)
);

CREATE TABLE IF NOT EXISTS manga_volumes(
	id INT PRIMARY KEY NOT NULL,
	manga_id INT NOT NULL,
	release_date DATE NOT NULL,
	total_pages  INT NOT NULL,
	price NUMERIC,
	foreign key(manga_id) references manga(id)
);

CREATE TABLE IF NOT EXISTS manga_chapters(
	id INT PRIMARY KEY NOT NULL,
	manga_volumes_id INT NOT NULL,
	title VARCHAR(255) NOT NULL,
	pages INT NOT NULL,
	average_rating DECIMAL(3,2) NOT NULL,
	foreign key(manga_volumes_id) references manga_volumes(id)
);







