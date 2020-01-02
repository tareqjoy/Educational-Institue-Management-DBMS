drop table course_result;
drop table teacher_course_taken;
drop table student_course_taken;
drop table student_info;
drop table teacher_info;
drop table courses;
drop table dept_info;
drop table faculty_info;

create table faculty_info(
	faculty_id number(2),
	faculty_name varchar(40) not null,
	faculty_web varchar(30),
	primary key(faculty_id)
	);

create table dept_info(
	dept_id number(2),
	dept_name varchar(40) not null,
	dept_email varchar(50),
	dept_established number(4),
	dept_location varchar(100),
	faculty_id number(2) not null,
	primary key(dept_id),
	foreign key(faculty_id) references faculty_info(faculty_id)
	);

create table courses(
    course_no varchar(8),
    course_name varchar(50) not null,
    course_credit number(3,2) default 3.00,
    course_type varchar(1) default 'T',
    course_of number(2) not null,
    primary key (course_no),
    foreign key (course_of) references dept_info(dept_id)
    );

create table teacher_info(
	teacher_id number(7),
	name varchar(35) not null,
	phone_no varchar(11) not null unique,
	email varchar(35),
	dept_id number(2) not null,
	designation varchar(15) not null,
	primary key(teacher_id),
	foreign key(dept_id) references dept_info(dept_id)
	);


create table student_info(
	roll_no number(7),
	dept_id number(2) not null,
	batch varchar(4) not null,
	name varchar(35) not null,
	hometown varchar(15) not null,
	phone_no varchar(11),
	email varchar(35),
	school varchar(35) not null,
	college varchar(35) not null,
	credit_completed number(6,3) default 000.000,
	cgpa number(3,2) default 0.00,
	primary key(roll_no),
	foreign key(dept_id) references dept_info(dept_id)
	);


create table student_course_taken(
	course_taken_id number(15),
	roll_no number(7) not null,
	course_no varchar(8) not null,
	course_taken_type varchar(3) not null,
	taken_session varchar(7) not null,
	unique(roll_no, course_no, course_taken_type),
	unique(roll_no, course_no, taken_session),
	primary key(course_taken_id),
	foreign key(roll_no) references student_info(roll_no),
	foreign key(course_no) references courses(course_no)
	);

create table teacher_course_taken(
	course_taken_id number(15),
	teacher1_id number(7) not null,
	teacher2_id number(7) not null,
	course_no varchar(8) not null,
	taken_session varchar(7) not null,
	primary key(course_taken_id),
	foreign key(teacher1_id) references teacher_info(teacher_id),
	foreign key(teacher2_id) references teacher_info(teacher_id),
	foreign key(course_no) references courses(course_no)
	);

create table course_result(
	course_result_id number(15),
	student_course_taken_id number(15) not null,
	teacher_course_taken_id number(15) not null,
	earned_gpa number(3,2),
	unique(student_course_taken_id, teacher_course_taken_id),
	primary key(course_result_id),
	foreign key(student_course_taken_id) references student_course_taken(course_taken_id),
	foreign key(teacher_course_taken_id) references teacher_course_taken(course_taken_id)
	);