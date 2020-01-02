insert into faculty_info(faculty_id, faculty_name, faculty_web) values(
			01, 
			'Civil Engineering',
			'http://ce.kuet.ac.bd');
insert into faculty_info(faculty_id, faculty_name, faculty_web) values(
			03, 
			'Electrical and Electronic Engineering',
			'http://eee.kuet.ac.bd');
insert into faculty_info(faculty_id, faculty_name, faculty_web) values(
			05, 
			'Mechanical Engineering',
			'http://me.kuet.ac.bd');



insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			01, 
			'Civil Engineering', 
			'civil@kuet.ac.bd', 
			1985,
			'Dept. of Civil Engg. Building, KUET', 
			01);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			07, 
			'Computer Science and Engineering', 
			'cse@kuet.ac.bd', 
			1998,
			'Academic Building, Block-B, KUET', 
			03);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			11, 
			'Industrial and Production Engineering', 
			'iem@kuet.ac.bd', 
			2004,
			'Academic Building, Block-D, KUET', 
			05);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			03, 
			'Electrical and Electronic Engineering', 
			'eee@kuet.ac.bd', 	
			1985,
			'EEE building, KUET', 
			03);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			23, 
			'Biomedical Engineering', 
			'bme@kuet.ac.bd', 
			2014,
			'Academic Building, Block-B, KUET', 
			03);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			05, 
			'Mechanical Engineering', 
			'me.kuet@kuet.ac.bd', 
			1985,
			'ME Building, KUET', 
			05);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			21, 
			'Textile Engineering', 
			'textile.main@kuet.ac.bd', 
			2011,
			'Academic Building, Block-D, KUET', 
			05);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			17, 
			'Urban and Regional Planning', 
			'burp@kuet.ac.bd', 
			2011,
			'New URP building, KUET', 
			01);
insert into dept_info(dept_id, dept_name, dept_email, dept_established, dept_location, faculty_id) values(
			09, 
			'Eletronics and Communication Engineering', 
			'ece@kuet.ac.bd', 
			2003,
			'Academic Building, Block-C, KUET', 
			03);


insert into courses(course_no, course_name, course_credit, course_type, course_of) values(
			'CSE 3110',
			'Database System Lab',
			'1.5',
			'L',
			07
			);
insert into courses(course_no, course_name, course_credit, course_type, course_of) values(
			'CSE 2200',
			'Advanced Programming Lab',
			'1.5',
			'L',
			07
			);
insert into courses(course_no, course_name, course_of) values(
			'CSE 3109',
			'Database System',
			07
			);
insert into courses(course_no, course_name, course_of) values(
			'CSE 2101',
			'Object Oriented Programming',
			07
			);
insert into courses(course_no, course_name, course_credit, course_type, course_of) values(
			'CSE 1108',
			'Introduction to Computer System Lab',
			'1.5',
			'L',
			07
			);
insert into courses(course_no, course_name, course_of) values(
			'EEE 1107',
			'Basic Electrical Engineering',
			07
			);
insert into courses(course_no, course_name, course_of) values(
			'EEE 1103',
			'Basic Electrical Engineering',
			03
			);
insert into courses(course_no, course_name, course_of) values(
			'BME 2101',
			'Anatomy',
			23
			);
insert into courses(course_no, course_name, course_of) values(
			'ME 1205',
			'Fluid Mechanics',
			05
			);
insert into courses(course_no, course_name, course_of) values(
			'ECE 3107',
			'Communication Engineering',
			07
			);


insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Karim Islam', 
			'01718192011', 
			'karim.islam@gmail.com', 
			07, 
			'Lecturer');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Ariyan Hasan', 
			'01900098878', 
			'ariyan1234@yahoo.com', 
			07, 
			'Dean');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Amina Akter', 
			'01818181818', 
			'amina.akter@gmail.com', 
			03, 
			'Professor');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Shafayel Ul Islam', 
			'01810145233', 
			'shafayetkuet@gmail.com', 
			07, 
			'Lecturer');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Alina Haque', 
			'01610101434', 
			'alina3231@gmail.com', 
			23, 
			'Lecturer');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Enamul Kabir', 
			'01790137083', 
			'enamul.kabir@gmail.com', 
			03, 
			'A. Professor');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Hasibur Rahman Hasib', 
			'01730302045', 
			'hrbs.kuet@yahoo.com', 
			07, 
			'Lecturer');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Sumanta Biswas', 
			'01718192303', 
			'tysdaddd@gmail.com', 
			23, 
			'Lecturer');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Dr. Mohiuddin Ahmed', 
			'01834185808', 
			'iammohiuddin@gmail.com', 
			03, 
			'Professor');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Mohammad Imtial Alam', 
			'01733448522', 
			'intz.azhid09@gmail.com', 
			03, 
			'Professor');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Shafayet Ul Islam', 
			'01715066602', 
			'shafayetulsilam02@gmail.com', 
			09, 
			'Lecturer');
insert into teacher_info(name, phone_no, email, dept_id, designation) values(
			'Dr. Mohammad Sabbir Reza', 
			'01856765515', 
			'sabbir2015@yahoo.com', 
			09, 
			'A. Professor');


insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1507096,
			'Tareq Rahman Joy', 
			'Barishal', 
			'01620601009', 
			'tareqjoy@yahoo.com', 
			'Municipal Model High School',
			'BN College, Ctg');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1507100,
			'Saeed Anwar Khan', 
			'Chittagong', 
			'01718181818', 
			'saeed124@yahoo.com', 
			'Govt. Muslim High School',
			'Notredame College');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1707109,
			'Mohammad Toha', 
			'Comilla', 
			'01718121166', 
			'tohhaa@gmail.com', 
			'Comilla Victorial School',
			'Comilla Cantt. College');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1703001,
			'Mahmud Al Hasan', 
			'Chittagong', 
			'01126312312', 
			'mahmud909@gmail.com', 
			'Ctg Cantt. School',
			'Rajuk Uttara Model College');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1523030,
			'Ruma Mostofa', 
			'Khulna', 
			'01567891011', 
			'ruma123@outlook.com', 
			'Khulna BN School',
			'Khulna Public College');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1607001,
			'Proshenjit Paul', 
			'Chittagong', 
			'01277790011', 
			'prsnjeeet34@gmail.com', 
			'Chittagong Collegiate School',
			'Chittagong Cantt. Public');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1507002,
			'Tajbidur Rahman', 
			'Sylhet', 
			'01718779123', 
			'asdfghj.897@gmail.com', 
			'Bluebird High School',
			'Sylhet MC College');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1507003,
			'Irfan Hasan Turjo', 
			'Bogura', 
			'01794145101', 
			'i.am.irfaan@gmail.com', 
			'Rajuk Uttora School',
			'Dhaka Residential Model College');
insert into student_info(roll_no, name, hometown, phone_no, email, school, college) values(
			1501001,
			'Mohammad Sayed', 
			'Dhaka', 
			'01800889931', 
			'sayed.kuetian@gmail.com', 
			'Dhaka Ideal School',
			'Saint Joseph Model College');


insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507096,
			'CSE 3109',
			'2018-19'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507096,
			'EEE 1107',
			'2016-17'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507096,
			'EEE 1107',
			'2017-18'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507096,
			'CSE 2101',
			'2017-18'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507096,
			'CSE 2200',
			'2017-18'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1703001,
			'EEE 1103',
			'2018-19'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1523030,
			'BME 2101',
			'2017-18'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507096,
			'ECE 3107',
			'2018-19'
			);
insert into student_course_taken(roll_no, course_no, taken_session) values(
			1507003,
			'ECE 3107',
			'2018-19'
			);
			


insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			1,
			2,
			'CSE 3109',
			'2018-19'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			3,
			6,
			'EEE 1107',
			'2016-17'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			9,
			6,
			'EEE 1107',
			'2017-18'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			2,
			4,
			'CSE 2101',
			'2017-18'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			1,
			7,
			'CSE 2200',
			'2017-18'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			3,
			10,
			'EEE 1103',
			'2018-19'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			5,
			8,
			'BME 2101',
			'2017-18'
			);
insert into teacher_course_taken(teacher1_id, teacher2_id, course_no, taken_session) values(
			11,
			12,
			'ECE 3107',
			'2018-19'
			);


insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			1,
			1,
			3.75
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			2,
			2,
			0.00
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			3,
			3,
			2.75
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			4,
			4,
			4.00
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			5,
			5,
			3.00
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			6,
			6,
			3.50
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			7,
			7,
			3.50
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			8,
			8,
			4.00
			);
insert into course_result(student_course_taken_id, teacher_course_taken_id, earned_gpa) values(
			9,
			8,
			4.00
			);
commit;