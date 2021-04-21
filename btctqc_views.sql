create or replace view view_surveys as 
	select 
		surveys.survey_id,
		users.user_id,
		user_details.first_name,
		user_details.middle_name,
		user_details.last_name,
		bus_infos.code bus_code,
		bus_infos.name bus_name,
		surveys.create_time_stamp,
		user_details.contact_number
	from surveys
	join users on users.user_id = surveys.user_id
	join user_details on users.user_id = user_details.user_id
	join bus_infos on bus_infos.bus_info_id = surveys.bus_info_id;
	
create or replace view view_surveys_dates as 
	select 
		create_time_stamp,
		bus_info_id
	from surveys group by date(create_time_stamp);
	
create or replace view view_responses as 
	select 
		responses.response_id,
		conditions.name condition_name,
		responses.survey_id
	from responses
	join conditions on conditions.condition_id = responses.condition_id;
	

create or replace view view_user_details as 
	select 
		ud.address,
		ud.contact_number,
		ud.create_time_stamp ,
		ud.first_name ,
		ud.last_name ,
		ud.middle_name ,
		ud.user_detail_id ,
		ud.user_id ,
		u2.admin,
		u2.request_password_reset
	from user_details ud 
	join users u2 on ud.user_id = u2.user_id ;

	
create
or replace
view view_summaries as select
    (
    select
        count( bus_info_id )
    from
        bus_infos ) as bus_count,
    (
    select
        count( user_id )
    from
        users ) as passenger_count,
    (
    select
        count( survey_id )
    from
        surveys ) as survey_count;
    