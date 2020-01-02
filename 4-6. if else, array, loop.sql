set serveroutput on

declare
type name is varray(10) of teacher_info.name%type;
nameArr name:=name();
type desig is varray(10) of teacher_info.designation%type;
desigArr desig:=desig();
counter number(2);

begin
    for counter in 1..5
    loop
        nameArr.extend;
        desigArr.extend;
        select name, designation into nameArr(counter), desigArr(counter) from teacher_info where teacher_id=counter;
    end loop;
    
    for counter in 1..5
    loop
        if (desigArr(counter)='Dean') or (desigArr(counter)='Professor') then
            dbms_output.put_line(nameArr(counter));
        end if;
    end loop;
exception
    when others then
        dbms_output.put_line('Error occured!');
end;

/