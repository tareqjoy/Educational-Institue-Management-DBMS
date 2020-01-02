set serveroutput on

create or replace procedure findDeptInfo (X in DEPT_INFO.DEPT_NAME%type,Y out number, Z out number) is
    deptID DEPT_INFO.DEPT_ID%type;
begin 
    SELECT dept_id into deptID from dept_info where dept_name=X;
    SELECT count(*) into Y from teacher_info where dept_id=deptID;
    SELECT count(*) into Z from student_info where dept_id=deptID;
end;
/


declare
    departmentName DEPT_INFO.DEPT_NAME%type;
    TotalTeacher number;
    TotalStudent number;
begin
    departmentName:='Computer Science and Engineering';
    findDeptInfo(departmentName, TotalTeacher, TotalStudent);
    dbms_output.put_line('Total no. of ' || departmentName || ' Students: ' || TotalTeacher || ', Teachers: ' || TotalStudent);
end;
/
