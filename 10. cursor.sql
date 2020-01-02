set serveroutput on
create or replace procedure show_courses is
    cursor fac is select faculty_name, faculty_id from faculty_info;
    facRecord fac%rowtype;
    cursor dept is select dept_name, dept_id from dept_info where faculty_id=facRecord.faculty_id;
    deptRecord dept%rowtype;
    cursor cour is select course_name from courses where course_of=deptRecord.dept_id;
    courRecord cour%rowtype;
    
begin
    open fac;
    loop
        fetch fac into facRecord;
        exit when fac%notfound;
        dbms_output.put_line(facRecord.faculty_name || ':');
        open dept;
        loop
            fetch dept into deptRecord;
            exit when dept%notfound;
            dbms_output.put_line('  >' || deptRecord.dept_name);
            open cour;
            loop
                fetch cour into courRecord;
                exit when cour%notfound;
                dbms_output.put_line('     -' || courRecord.course_name);
            end loop;
            close cour;
        end loop;
        close dept;
        
    end loop;
    close fac;
end;
/

begin
show_courses();

end;
/