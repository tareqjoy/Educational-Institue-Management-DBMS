
select * from faculty_info;
select * from dept_info;
select * from teacher_info;
select * from student_info;
select d.dept_id, d.dept_name from dept_info d, faculty_info f where d.dept_id=f.faculty_id;
select d.dept_id, d.dept_name from dept_info d join faculty_info f on d.dept_id!=f.faculty_id;
select roll_no, name, dept_id from student_info where dept_id=7;
select roll_no, name, dept_id from student_info order by roll_no; 




select count(dept_id) from dept_info;
select count(teacher_id), designation from teacher_info group by designation;
select count(teacher_id), designation from teacher_info group by designation having count(teacher_id)>=2;
select distinct(hometown) from student_info order by hometown;
select avg(cgpa) from student_info;


select faculty_id, faculty_name from faculty_info where faculty_id in(select faculty_id from dept_info where dept_id in(select dept_id from student_info where batch='2k15'));



select s.roll, s.name, c.course_no, c.course_taken_type from student_info s join student_course_taken c on s.roll_no=c.roll_no; 
select s.roll_no, s.name, c.course_no, c.course_taken_type, c.taken_session from student_info s join student_course_taken c on s.roll_no=c.roll_no; 
select t.teacher_id, t.name, c.course_no, c.taken_session from teacher_info t full outer join teacher_course_taken c on t.teacher_id=c.teacher1_id or t.teacher_id=c.teacher2_id;

