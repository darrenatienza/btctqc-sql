/**05-04-2021*/
ALTER TABLE user_details ADD profile_pic LONGBLOB NULL;
ALTER TABLE surveys ADD temperature DECIMAL NULL;
ALTER TABLE surveys MODIFY COLUMN temperature decimal(10,2) DEFAULT NULL NULL;


/**04-23-2021*/
ALTER TABLE user_details ADD gender varchar(100) NULL;
ALTER TABLE user_details ADD birth_date DATETIME NULL;
ALTER TABLE surveys ADD start_route varchar(100) NULL;
ALTER TABLE surveys ADD destination_route varchar(100) NULL;

/** */
ALTER TABLE btctqc_db.users ADD request_password_reset BOOL DEFAULT 0 NOT NULL;
