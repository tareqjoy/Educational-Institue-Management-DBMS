set serveroutput on
create or replace trigger find_info_from_roll 
before insert or update of roll_no on student_info for each row
declare 
    batch_no number(2);
    dept_no number(4);
begin
    batch_no:=  floor(:new.roll_no/100000);
    :new.batch:= concat('2k', batch_no);
    dept_no:=  floor(:new.roll_no/1000);
    dept_no:=  mod(dept_no, 100);
    :new.dept_id:= dept_no;
end;
/ 
