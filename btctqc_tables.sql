CREATE TABLE users (
	user_id INT NOT NULL AUTO_INCREMENT,
	username varchar(100) NOT NULL,
	password varchar(100) NOT NULL,
	active BOOL NOT NULL,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (user_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE user_details (
	user_detail_id INT NOT NULL AUTO_INCREMENT,
	user_id INT NOT NULL,
	first_name varchar(100) NOT NULL,
	middle_name varchar(100) NOT NULL,
	last_name varchar(100)  NOT NULL,
	address varchar(100)  NOT NULL,
	contact_number varchar(100)  NOT NULL,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT user_details_pk PRIMARY KEY (user_detail_id),
	CONSTRAINT users_user_details_fk FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE cascade
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


CREATE TABLE bus_infos (
	bus_info_id INT NOT NULL AUTO_INCREMENT,
	name varchar(100)  null,
	code varchar(100)  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT bus_infos_pk PRIMARY KEY (bus_info_id)
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE conditions (
	condition_id INT NOT NULL AUTO_INCREMENT,
	name varchar(100)  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT conditions_pk PRIMARY KEY (condition_id)
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


CREATE TABLE surveys (
	survey_id INT NOT NULL AUTO_INCREMENT,
	user_id INT  null,
	bus_info_id INT  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT surveys_pk PRIMARY KEY (survey_id),
	CONSTRAINT surveys_users_fk FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE cascade,
	CONSTRAINT surveys_bus_infos_fk FOREIGN KEY (bus_info_id) REFERENCES bus_infos (bus_info_id) ON DELETE cascade
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE responses (
	response_id INT NOT NULL AUTO_INCREMENT,
	survey_id INT  null,
	condition_id INT  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT responses_pk PRIMARY KEY (response_id),
	CONSTRAINT responses_surveys_fk FOREIGN KEY (survey_id) REFERENCES surveys (survey_id) ON DELETE cascade,
	CONSTRAINT responses_conditions_fk FOREIGN KEY (condition_id) REFERENCES conditions (condition_id) ON DELETE CASCADE
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


