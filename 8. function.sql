CREATE OR REPLACE FUNCTION totalStudents
RETURN number IS 
   total number(5) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM student_info; 
   RETURN total; 
END; 
/ 


CREATE OR REPLACE FUNCTION totalTeachers
RETURN number IS 
   total number(5) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM teacher_info; 
   RETURN total; 
END; 
/ 


CREATE OR REPLACE FUNCTION totalMembers
RETURN number IS 
   total number(5) := 0; 
BEGIN 
   total := totalStudents()+totalTeachers(); 
   RETURN total; 
END; 
/ 


DECLARE 
   t number(5); 
BEGIN 
   t := totalMembers(); 
   dbms_output.put_line('Total no. of Members: ' || t); 
END; 
/
