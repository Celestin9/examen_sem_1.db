ALTER TABLE manga_publishers
RENAME COLUMN annual_revenue TO annual_revenue_yen;


UPDATE manga SET authors_id = 11 WHERE id = 1;
UPDATE manga SET authors_id = 11 WHERE id = 2;
UPDATE manga SET authors_id = 11 WHERE id = 3;
UPDATE manga SET authors_id = 11 WHERE id = 4;
UPDATE manga SET authors_id = 11 WHERE id = 5;


UPDATE manga SET manga_publishers_id = 6 WHERE id = 3;
UPDATE manga SET manga_publishers_id = 6 WHERE id = 1;
UPDATE manga SET manga_publishers_id = 6 WHERE id = 8;
UPDATE manga SET manga_publishers_id = 6 WHERE id = 9;
UPDATE manga SET manga_publishers_id = 6 WHERE id = 4;

UPDATE manga_readers SET manga_id = 6 WHERE id = 31;
UPDATE manga_readers SET manga_id = 6 WHERE id = 22;
UPDATE manga_readers SET manga_id = 6 WHERE id = 38;
UPDATE manga_readers SET manga_id = 6 WHERE id = 49;
UPDATE manga_readers SET manga_id = 6 WHERE id = 45;

ALTER TABLE manga_series_readers RENAME TO manga_readers;


UPDATE manga_editors SET manga_id = 6 WHERE id = 31;
UPDATE manga_editors SET manga_id = 6 WHERE id = 22;
UPDATE manga_editors SET manga_id = 6 WHERE id = 38;
UPDATE manga_editors SET manga_id = 6 WHERE id = 49;
UPDATE manga_editors SET manga_id = 6 WHERE id = 45;

UPDATE manga_volumes SET manga_id = 6 WHERE id = 31;
UPDATE manga_volumes SET manga_id = 6 WHERE id = 22;
UPDATE manga_volumes SET manga_id = 6 WHERE id = 38;
UPDATE manga_volumes SET manga_id = 6 WHERE id = 49;
UPDATE manga_volumes SET manga_id = 6 WHERE id = 45;

UPDATE readers_subscriptions SET readers_id = 6 WHERE id = 31;
UPDATE readers_subscriptions SET readers_id= 6 WHERE id = 22;
UPDATE readers_subscriptions SET readers_id = 6 WHERE id = 38;
UPDATE readers_subscriptions SET readers_id = 6 WHERE id = 49;
UPDATE readers_subscriptions SET readers_id = 6 WHERE id = 45;

UPDATE manga_readers SET readers_id = 6 WHERE id = 31;
UPDATE manga_readers SET readers_id = 6 WHERE id = 22;
UPDATE manga_readers SET readers_id = 6 WHERE id = 38;
UPDATE manga_readers SET readers_id = 6 WHERE id = 49;
UPDATE manga_readers SET readers_id = 6 WHERE id = 45;

UPDATE manga_editors SET editors_id = 6 WHERE id = 31;
UPDATE manga_editors SET editors_id = 6 WHERE id = 22;
UPDATE manga_editors SET editors_id= 6 WHERE id = 38;
UPDATE manga_editors SET editors_id = 6 WHERE id = 49;
UPDATE manga_editors SET editors_id = 6 WHERE id = 45;
