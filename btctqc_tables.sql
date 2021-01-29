CREATE TABLE persons (
	person_id INT NOT NULL AUTO_INCREMENT,
	first_name varchar(100) NOT NULL,
	middle_name varchar(100) NOT NULL,
	last_name varchar(100)  NOT NULL,
	address varchar(100)  NOT NULL,
	contact_number varchar(100)  NOT NULL,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT persons_pk PRIMARY KEY (person_id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE users (
	user_id INT NOT NULL AUTO_INCREMENT,
	username varchar(100) NOT NULL,
	password varchar(100) NOT NULL,
	active BOOL NOT NULL,
	person_id INT  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (user_id),
	CONSTRAINT users_persons_fk FOREIGN KEY (person_id) REFERENCES persons (person_id) ON DELETE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


CREATE TABLE users_roles (
	user_role_id INT NOT NULL AUTO_INCREMENT,
	user_id INT  null,
	role_id INT  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT users_roles_pk PRIMARY KEY (user_role_id),
	CONSTRAINT users_roles_users_fk FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE cascade,
	CONSTRAINT users_roles_roles_fk FOREIGN KEY (role_id) REFERENCES roles (role_id) ON DELETE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE roles (
	role_id INT NOT NULL AUTO_INCREMENT,
	name varchar(100)  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT roles_pk PRIMARY KEY (role_id)
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

CREATE TABLE symptoms (
	symptom_id INT NOT NULL AUTO_INCREMENT,
	name varchar(100)  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT symptoms_pk PRIMARY KEY (symptom_id)
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


CREATE TABLE traces (
	trace_id INT NOT NULL AUTO_INCREMENT,
	person_id INT  null,
	bus_info_id INT  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT traces_pk PRIMARY KEY (trace_id),
	CONSTRAINT traces_persons_fk FOREIGN KEY (person_id) REFERENCES persons (person_id) ON DELETE cascade,
	CONSTRAINT traces_bus_infos_fk FOREIGN KEY (bus_info_id) REFERENCES bus_infos (bus_info_id) ON DELETE cascade
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

CREATE TABLE traces_logs (
	traces_log_id INT NOT NULL AUTO_INCREMENT,
	trace_id INT  null,
	symptom_id INT  null,
	create_time_stamp DATETIME DEFAULT current_timestamp() NOT NULL,
	CONSTRAINT traces_logs_pk PRIMARY KEY (traces_log_id),
	CONSTRAINT traces_logs_traces_fk FOREIGN KEY (trace_id) REFERENCES traces (trace_id) ON DELETE cascade,
	CONSTRAINT traces_logs_symptoms_fk FOREIGN KEY (symptom_id) REFERENCES symptoms (symptom_id) ON DELETE CASCADE
	)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;


