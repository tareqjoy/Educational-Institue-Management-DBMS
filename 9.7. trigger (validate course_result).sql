set serveroutput on
create or replace trigger validate_course_result
before insert on course_result for each row
declare 
    scn varchar(8);
    tcn varchar(8);
    scts varchar(7);
    tcts varchar(7);
begin
    select course_no, taken_session into scn, scts from student_course_taken where course_taken_id=:new.student_course_taken_id;
    select course_no, taken_session into tcn, tcts from teacher_course_taken where course_taken_id=:new.teacher_course_taken_id;
    if scn!=tcn or scts!=tcts then
        :new.student_course_taken_id:=null;
    end if;
end;
/ 