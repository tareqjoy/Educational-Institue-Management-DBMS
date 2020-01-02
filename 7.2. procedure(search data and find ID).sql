set serveroutput on

create or replace procedure findID (X in varchar) is
    cursor fac is select faculty_id, faculty_name from faculty_info where LOWER(faculty_name) like LOWER(concat('%',concat(X, '%'))) order by faculty_id;
    facRecord fac%rowtype;
    
    cursor dept is select dept_id, dept_name from dept_info where LOWER(dept_name) like LOWER(concat('%',concat(X, '%'))) order by dept_id;
    deptRecord dept%rowtype;
    
    cursor cour is select course_name, course_no  from courses where LOWER(course_name) like LOWER(concat('%',concat(X, '%'))) order by course_no;
    courRecord cour%rowtype;
    
    cursor stud is select roll_no, name from student_info where LOWER(name) like LOWER(concat('%',concat(X, '%'))) or phone_no=X or LOWER(email)=X order by roll_no;
    studRecord stud%rowtype;
    
    cursor teac is select teacher_id, name from teacher_info where LOWER(name) like LOWER(concat('%',concat(X, '%'))) or phone_no=X or LOWER(email)=LOWER(X) order by teacher_id;
    teacRecord teac%rowtype;
begin 
    dbms_output.put_line('Faculty:');
    open fac;
    loop
        fetch fac into facRecord;
        exit when fac%notfound;
        dbms_output.put_line('  '||facRecord.faculty_name || ': ' || facRecord.faculty_id);
    end loop;
    close fac;
    
    dbms_output.put_line('Department:');
    open dept;
    loop
        fetch dept into deptRecord;
        exit when dept%notfound;
        dbms_output.put_line('  '||deptRecord.dept_name || ': ' || deptRecord.dept_id);
    end loop;
    close dept;
    
    dbms_output.put_line('Courses:');
    open cour;
    loop
        fetch cour into courRecord;
        exit when cour%notfound;
        dbms_output.put_line('  '||courRecord.course_name || ': ' || courRecord.course_no);
    end loop;
    close cour;
    
    dbms_output.put_line('Student:');
    open stud;
    loop
        fetch stud into studRecord;
        exit when stud%notfound;
        dbms_output.put_line('  '||studRecord.name || ': ' || studRecord.roll_no);
    end loop;
    close stud;
    
    
    dbms_output.put_line('Teacher:');
    open teac;
    loop
        fetch teac into teacRecord;
        exit when teac%notfound;
        dbms_output.put_line('  '||teacRecord.name || ': ' || teacRecord.teacher_id);
    end loop;
    close teac;
end;
/

begin
findID('c');

end;
/




