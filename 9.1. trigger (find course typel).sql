set serveroutput on
create or replace trigger find_course_type
before insert or update of course_taken_type on student_course_taken for each row
declare 
    taken number(2);
begin
    select count(*) into taken from student_course_taken where roll_no=:new.roll_no and course_no=:new.course_no;
    if taken=0 then
        :new.course_taken_type:='R';
    else
        :new.course_taken_type:=concat('B', taken);
    end if;
end;
/ 

