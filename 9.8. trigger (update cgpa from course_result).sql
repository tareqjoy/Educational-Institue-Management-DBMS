CREATE OR REPLACE TRIGGER update_cgpa
before insert on course_result for each row
when (new.earned_gpa !=0.00)
declare 
   totalCredit number(6,3) := 0.00; 
   currCGPA number(3,2) := 0.00; 
   weightedCGPA number(6,3) := 0.00;
   credit number(3,2) :=0.00;
   gpa number(3,2);
   weightedGPA number(5,3) := 0.00;
   currRoll number(7);
   takenType varchar(3);
begin
    select roll_no into currRoll from student_course_taken where course_taken_id=:new.student_course_taken_id;
    select credit_completed, cgpa into totalCredit, currCGPA from student_info where roll_no=currRoll; 
    select course_credit into credit from courses where course_no in (select course_no from student_course_taken where course_taken_id=:new.student_course_taken_id);
    select course_taken_type into takenType from student_course_taken where course_taken_id=:new.student_course_taken_id;
    gpa:=:new.earned_gpa;
    if takenType!='R' then
        gpa:= gpa-0.75;
    end if;
    
    if gpa>=2.00 then
        weightedCGPA:= currCGPA * totalCredit;
        weightedGPA:= gpa * credit;
        weightedCGPA:= weightedCGPA+weightedGPA;
        totalCredit:=totalCredit+credit;
        currCGPA:=weightedCGPA/totalCredit;

        update student_info set cgpa=currCGPA where roll_no=currRoll;
        update student_info set credit_completed=totalCredit where roll_no=currRoll;
    end if;
end;
/