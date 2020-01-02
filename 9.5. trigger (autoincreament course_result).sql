set serveroutput on
create or replace trigger find_id_course_result
before insert or update of course_result_id on course_result for each row
declare 
    last_id number(15);
begin
    select max(course_result_id) into last_id from course_result;
    if last_id is null then
        :new.course_result_id:=1;
    else
        :new.course_result_id:=last_id+1;
    end if;
end;
/ 