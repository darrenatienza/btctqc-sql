/**Default admin user*/
INSERT INTO btctqc_db.users (user_id, username, password, active,admin, create_time_stamp) 
VALUES(1,'admin', '$2y$10$6W8O2Lxsv0U59/IqhdHkwurTgqNZw1ODbhIYweQSVWEmg0KgJm6sW' , 1,1, current_timestamp()) ON DUPLICATE KEY UPDATE    
username='admin', password='$2y$10$6W8O2Lxsv0U59/IqhdHkwurTgqNZw1ODbhIYweQSVWEmg0KgJm6sW', active=1, admin=1;

/**Default admin user detail*/
INSERT INTO btctqc_db.user_details (user_detail_id , user_id, first_name , middle_name ,last_name,address, contact_number,create_time_stamp) 
VALUES(1,1, 'admin' ,'admin','admin', 'batangas','1234567', current_timestamp()) ON DUPLICATE KEY UPDATE    
first_name='admin', middle_name='admin',last_name='admin',address='batangas',contact_number='1234567';


/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(1, 'FEVER' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='FEVER';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(2, 'NEW COUGH' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='NEW COUGH';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(3, 'SHORTNESS OF BREATH' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='SHORTNESS OF BREATH';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(4, 'RESPIRATORY DISTRESS' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='RESPIRATORY DISTRESS';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(5, 'CHILLS' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='CHILLS';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(6, 'MUSCLE ACHES' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='MUSCLE ACHES';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(7, 'HEADACHE' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='HEADACHE';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(8, 'VOMITING' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='VOMITING';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(9, 'DIARRHEA' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='DIARRHEA';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(10, 'ANOSMIA' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='ANOSMIA';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(11, 'RUNNY NOSE' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='RUNNY NOSE';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(12, 'SORE THROAT' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='SORE THROAT';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(13, 'FATIGUE' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='FATIGUE';


/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(14, 'DIZZINESS' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='DIZZINESS';

/**Default Conditions*/
INSERT INTO btctqc_db.conditions (condition_id , name,create_time_stamp) 
VALUES(15, 'NONE' , current_timestamp()) ON DUPLICATE KEY UPDATE    
name='NONE';