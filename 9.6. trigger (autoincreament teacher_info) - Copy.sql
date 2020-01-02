set serveroutput on
create or replace trigger find_id_teacher_info
before insert or update of teacher_id on teacher_info for each row
declare 
    last_id number(7);
begin
    select max(teacher_id) into last_id from teacher_info;
    if last_id is null then
        :new.teacher_id:=1;
    else
        :new.teacher_id:=last_id+1;
    end if;
end;
/ 
