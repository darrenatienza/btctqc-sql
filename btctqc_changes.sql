/**04-23-2021*/
ALTER TABLE user_details ADD gender varchar(100) NULL;
ALTER TABLE user_details ADD birth_date DATETIME NULL;
ALTER TABLE surveys ADD start_route varchar(100) NULL;
ALTER TABLE surveys ADD destination_route varchar(100) NULL;

/** */
ALTER TABLE btctqc_db.users ADD request_password_reset BOOL DEFAULT 0 NOT NULL;
