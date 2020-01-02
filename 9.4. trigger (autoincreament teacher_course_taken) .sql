set serveroutput on
create or replace trigger find_teacher_id_course_taken
before insert or update of course_taken_id on teacher_course_taken for each row
declare 
    last_id number(15);
begin
    select max(course_taken_id) into last_id from teacher_course_taken;
    if last_id is null then
        :new.course_taken_id:=1;
    else
        :new.course_taken_id:=last_id+1;
    end if;
end;
/ 