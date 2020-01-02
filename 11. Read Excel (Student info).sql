set serveroutput on

create or replace procedure ReadStudentInfoFile is
    f utl_file.file_type;
	line varchar(1000);
	rollNo STUDENT_INFO.ROLL_NO%type;
	name STUDENT_INFO.NAME%type;
	hometown STUDENT_INFO.HOMETOWN%type;
	phoneNo STUDENT_INFO.PHONE_NO%type;
	email STUDENT_INFO.EMAIL%type;
	school STUDENT_INFO.SCHOOL%type;
	college STUDENT_INFO.COLLEGE%type;
begin 
    f :=utl_file.fopen('DATABASE','student_table_data.csv','r'); 
	
	if utl_file.is_open(f) then

		utl_file.get_line(f, line, 1000);

		loop
		begin
			utl_file.get_line(f, line, 1000);
			if line is null then exit;
			end if;

			rollNo:=regexp_substr(line,'[^,]+',1,1);
			name:=regexp_substr(line,'[^,]+',1,2);
			hometown:=regexp_substr(line,'[^,]+',1,3);
			phoneNo:=regexp_substr(line,'[^,]+',1,4);
			email:=regexp_substr(line,'[^,]+',1,5);
			school:=regexp_substr(line,'[^,]+',1,6);
            college:=regexp_substr(line,'[^,]+',1,7);

			insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(rollNo, name, hometown, phoneNo, email, school, college);
            commit;
			exception when no_data_found then exit;
                      when DUP_VAL_ON_INDEX then continue;
			end;
		end loop;
        
	end if;

	utl_file.fclose(f);
end;
/

begin
    ReadStudentInfoFile(); 
end;