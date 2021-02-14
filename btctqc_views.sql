create or replace view view_surveys as 
	select 
		surveys.survey_id,
		user_details.first_name,
		user_details.middle_name,
		user_details.last_name,
		bus_infos.code bus_code,
		bus_infos.name bus_name,
		surveys.create_time_stamp
	from surveys
	join users on users.user_id = surveys.user_id
	join user_details on users.user_id = user_details.user_id
	join bus_infos on bus_infos.bus_info_id = surveys.bus_info_id;
	
create or replace view view_responses as 
	select 
		responses.response_id,
		conditions.name condition_name,
		responses.survey_id
	from responses
	join conditions on conditions.condition_id = responses.condition_id;