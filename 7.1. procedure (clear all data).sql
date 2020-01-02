set serveroutput on

create or replace procedure clear_all_data is
begin 
    delete from course_result;
    delete from teacher_course_taken;
    delete from student_course_taken;
    delete from student_info;
    delete from teacher_info;
    delete from courses;
    delete from dept_info;
    delete from faculty_info;
end;
/



