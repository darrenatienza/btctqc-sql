create or replace view view_traces as 
	select 
		traces.person_id,
		persons.first_name,
		persons.middle_name,
		persons.lastName,
		bus_infos.code,
		bus_infos.name
	from traces
	join persons on traces.person_id = persons.person_id
	join bus_infos on bus_infos.bus_info_id = traces.bus_info_id;
	
create or replace view view_traces_logs as 
	select 
		traces_logs.traces_log_id,
		traces_logs.trace_id,
		symptoms.symptom_id,
		symptoms.name
	from traces_logs
	join symptoms on symptoms.symptom_id = traces_logs.symptom_id;