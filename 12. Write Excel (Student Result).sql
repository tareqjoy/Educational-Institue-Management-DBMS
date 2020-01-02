set serveroutput on

create or replace procedure WriteResultStudent is
    f utl_file.file_type;
    cursor c1 is select roll_no, name, credit_completed, cgpa from student_info order by roll_no;
    c1Record c1%rowtype;
begin 
    f :=utl_file.fopen('DATABASE','student_res.csv','w'); 

    utl_file.put(f,'Roll No'||','||'Name'||','||'Credit completed'||','||'CGPA');
    utl_file.new_line(f);

    open c1;
    loop
        fetch c1 into c1Record;
        exit when c1%notfound;


        utl_file.put(f,c1Record.roll_no||','||c1Record.name||','||c1Record.credit_completed||','||c1Record.cgpa);
      
        utl_file.new_line(f);
    
        
    end loop;
    close c1;
    utl_file.fclose(f);
end;
/

begin
    WriteResultStudent();
end;