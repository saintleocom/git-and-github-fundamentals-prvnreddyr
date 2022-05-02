create table user_tbl(
	user_id_i    int PRIMARY KEY,
	first_name_c varchar(50),
	last_name_c  varchar(50),
	login_c      varchar(50),
	password_c   text,
	ssn_c        varchar(50),
	dob_d 		 date,
	address_1 varchar(50),
	address_2 varchar(50),
	gender_c  varchar(50),
	city_c    varchar(50),
	state_c   varchar(50),
	country_c varchar(50),
	phone_c   varchar(50),
	marital_status_c  varchar(50)
);

create table patient_tbl(
	patient_id_i int PRIMARY KEY,
	user_id_i  int,
	patient_allergies_c varchar(100),
	CONSTRAINT fk_patient_user
	FOREIGN KEY (user_id_i) REFERENCES user_tbl(user_id_i)
);

create table doctor_tbl(
	doctor_id_i int PRIMARY KEY,
	user_id_i int,
	level_c   varchar(50),
	department_c  varchar(50),
	speciality_c  varchar(50),
	qualification_c varchar(50),
	FOREIGN KEY (user_id_i) REFERENCES user_tbl(user_id_i)
);

create table lab_test_tbl(
	lab_test_id_i int PRIMARY KEY,
	test_name_c varchar(50),
	test_type_c varchar(50),
	conditions_c varchar(50),
	sample_type_c  varchar(50),
	sample_quantity_c varchar(50),
	price_i   int
);

create table lab_reports_tbl(
	lab_report_id_i int PRIMARY KEY,
	patient_id_i int,
	doctor_id_i int,
	lab_test_id_i int,
	result_c  varchar(50),
	date_performed_d date,
	FOREIGN KEY (patient_id_i) REFERENCES patient_tbl(patient_id_i),
	FOREIGN KEY (doctor_id_i) REFERENCES doctor_tbl(doctor_id_i),
	FOREIGN KEY (lab_test_id_i) REFERENCES lab_test_tbl(lab_test_id_i)
);

create table patient_visit_tbl(
	patient_visit_id_i int PRIMARY KEY,
	patient_id_i int,
	doctor_id_i int,
	bmi_c  varchar(25),
	weight_c  varchar(25),
	temperature_c varchar(10),
	pulse_rate_c  varchar(10),
	blood_pressure_c varchar(10),
	lab_report_id_i int,
	followup_date_d  date,
	FOREIGN KEY (patient_id_i) REFERENCES patient_tbl(patient_id_i),
	FOREIGN KEY (doctor_id_i)  REFERENCES doctor_tbl(doctor_id_i),
	FOREIGN KEY (lab_report_id_i)  REFERENCES lab_reports_tbl(lab_report_id_i)
);

create table medicine_tbl(
	medicine_id_i int PRIMARY KEY,
	medicine_name_c  varchar(50),
	type_c   varchar(50)
);
	
create table prescription_tbl(
	prescription_id_i  int PRIMARY KEY,
	patient_id_i int,
	doctor_id_i  int,
	medicine_id_i int,
	dosage_c  varchar(10),
	quantity_c varchar(10),
	start_date_d  date,
	end_date_d   date,
	FOREIGN KEY (patient_id_i)  REFERENCES patient_tbl(patient_id_i),
	FOREIGN KEY (doctor_id_i)  REFERENCES  doctor_tbl(doctor_id_i),
	FOREIGN KEY (medicine_id_i)  REFERENCES medicine_tbl(medicine_id_i)
);


-- --------
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(1,'Dan','Henry','dan.henry','cfer465jhb','1234323443434', '2000-09-10', '10210','mlk blvd','male','tampa','Florida','USA','98989898','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(2,'Nick','Mich','dan.henry','nlasdf8883CCxx','2532323434', '2004-03-10', '10210','mlk blvd','male','tampa','Florida','USA','8787387687','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(3,'Lack','hub','lack.hub','sadffdfdDDF43','746332554', '2005-03-10', '10210','mlk blvd','male','tampa','Florida','USA','8723663','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(4,'Emma','tol','emma.tol','asdhfkjhDSDF','62334', '2006-07-10', '10210','temple terrce','male','tampa','Florida','USA','2377717374','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(5,'James','dash','james.dash','asdkfhj443DDD','7973248332', '2008-02-10', '10210','brandon','Female','tampa','Florida','USA','8783749884','Married');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(6,'Deck','bouchard','deck.b','dshfjd43DDD','32643432', '2009-03-10', '10210','beach','male','tampa','Florida','USA','87249857','Married');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(7,'John','jennifer','john.jenn','dskfhh332DDD','2236544', '1985-04-10', '10210','st peter','Female','tampa','Florida','USA','9234543','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(8,'Pat','Robert','pat.rob','sdkfhjd963GSSA','754223', '1987-06-04', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(9,'Emma','fran','faran.e','sdkfhjd963GSSA','754223', '1987-06-11', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Married');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(10,'kim','josh','josh.k','sdkfhjd963GSSA','754223', '1996-05-17', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Married');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(11,'jack','dash','dash.j','sdkfhjd963GSSA','754223', '1987-07-16', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Married');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(12,'navy','john','navy.j','sdkfhjd963GSSA','754223', '1987-03-13', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(13,'pills','havard','pills.havard','sdkfhjd963GSSA','754223', '1987-01-12', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Married');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(14,'Anta','kath','anta.kath','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(15,'Sophia','Ame','sophia.a','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(16,'strong','Amelia','s.ameli','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(17,'Mia','Kia','anta.kath','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(18,'Lillian','k','lillian.k','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(19,'Willow','hin','willow.h','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','123533','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(20,'Autumn','Jade','jade.a','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','5345454345','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(21,'Natalia','Josephine','nat.j','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','856433223','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(22,'Faith','Josephine','faith.j','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','34453554','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(23,'Andrea','Summer','and.summ','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','755455','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(24,'Juliette','Josephine','jul.jos','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','33434','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(25,'Brynlee','Journee','bry.jou','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','87983743637','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(26,'Lauren','Margot','mar.lau','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3333364343','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(27,'Sydney','Malia','mali.syd','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','33433443','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(28,'Myla','Tessa','ttes.myl','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','3245243534','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(29,'Annie','Gabriela','gab.ann','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','38324738','Single');
INSERT INTO `user_tbl`(`user_id_i`, `first_name_c`, `last_name_c`, `login_c`, `password_c`, `ssn_c`, `dob_d`, `address_1`, `address_2`, `gender_c`, `city_c`, `state_c`, `country_c`, `phone_c`, `marital_status_c`) VALUES 
(30,'Mariah','Gracelynn','grac.mariah','sdkfhjd963GSSA','754223', '1987-09-15', '10210','mlk blvd','male','tampa','Florida','USA','88637369787','Single');


-- --------
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (1, 1, 'milk allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (2, 2, 'Ice cream allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (3, 3, 'peanut allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (4, 4, 'nut allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (5, 5, 'skin allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (6, 6, 'gdigestive allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (7, 7, 'milk allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (8, 8, 'food allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (9, 9, 'drink allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (10, 10, 'drug allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (11, 11, 'milk allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (12, 12, 'food allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (13, 13, 'insect allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (14, 14, 'latex allergy');
INSERT INTO `patient_tbl`(`patient_id_i`, `user_id_i`, `patient_allergies_c`) VALUES (15, 15, 'pet allergy');


-- --------
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (1,16, 'high','cardilogy','operation','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (2,16, 'high','nephrology','kidney','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (3,17, 'high','physitherapist','physiotheraphy','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (4,18, 'medium','Skin','checkup','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (5,19, 'top','Eye','ENT','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (6,20, 'low','Nose','ENT','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (7,21, 'high','Bones','operation','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (8,22, 'medium','Liver','operation','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (9,23, 'top','Dental','cleaning','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (10,24, 'high','Cardilogy','Checkup','PHD');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (11,25, 'top','physician','checkup','diploma');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (12,26, 'medium','physician','','diloma');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (13,27, 'top','cardilogy','','phd');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (14,28, 'top','Nurve','','mbbs');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (15,29, 'top','Bones','','mbbs');
INSERT INTO `doctor_tbl`(`doctor_id_i`, `user_id_i`, `level_c`, `department_c`, `speciality_c`, `qualification_c`) 
VALUES (16,30, 'top','Joints','','professor');



-- --------
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (1,'abdomen scanning','scanning','fasting','scanning','NA',30);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (2,'blood test','diabetes','diabetes type2','fasting','30mg',40);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (3,'blood test','diabetes','diabetes type2','post lunch','30mg',40);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (4,'blood test','CBP','CBP','fasting','30mg',50);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (5,'blood test','platelets','platelet count','random','50mg',40);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (6,'blood test','red bold cells','blood cells','fasting','50mg',40);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (7,'urine test','urine test','','','',40);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (8,'blood culture','','','Random','30mg',50);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (9,'Iron','blood test','','','10mg',40);
INSERT INTO `lab_test_tbl`(`lab_test_id_i`, `test_name_c`, `test_type_c`, `conditions_c`, `sample_type_c`, `sample_quantity_c`, `price_i`) VALUES (10,'createnine','blood test','','','40mg',50);



-- --------
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (1,'captopril tablet','ablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (2,'chlorthalidone tablet','injection');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (3,'digoxin tablets','tablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (4,'isosorbide mononitrate','Imdur');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (5,'nystatin tablet','Nystatin tablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (6,'raloxifene tablet','Evista');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (7,'rivastigmine tartrate capsule','injection');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (8,'rufinamide','tablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (9,'temazepam','tab');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (10,'Agrylin','tab');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (11,'Alamast','injection');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (12,'Aldactone','tablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (13,'Azopt','injection');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (14,'Azithromycin','tablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (15,'Allopurinol','injection');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (16,'Amifostine','tablet');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (17,'Alendronate','injection');
INSERT INTO `medicine_tbl`(`medicine_id_i`, `medicine_name_c`, `type_c`) VALUES (18,'Abacavir','injection');



-- --------
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (1,2,1,2,'postive','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (2,4,2,3,'negative','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (3,6,4,4,'120/80','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (4,8,1,5,'positve','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (5,3,3,5,'nothing found','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (6,2,1,6,'infection','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (7,5,2,6,'asthama','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (8,2,2,6,'eye sight','2021-01-09');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (9,6,2,6, 'nose infection','2018-06-03');
INSERT INTO `lab_reports_tbl`(`lab_report_id_i`, `patient_id_i`, `doctor_id_i`, `lab_test_id_i`, `result_c`, `date_performed_d`) VALUES (10,7,2,4, 'postive','2019-06-09');


-- --------
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (1,1,2,'18','140','98','normal','140',1,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (2,2,2,'18','130','98','normal','140',2,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (3,2,3,'18','120','55','normal','140',3,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (4,1,4,'18','100','23','normal','140',4,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (5,3,4,'18','110','45','normal','140',5,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (6,1,2,'18','90','23','normal','140',6,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (7,4,2,'18','70','76','normal','140',7,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (8,5,2,'18','140','65','normal','140',8,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (9,4,6,'18','154','80','normal','140',9,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (10,1,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (11,1,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (12,4,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (13,1,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (14,7,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (15,8,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (16,1,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (17,8,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (18,8,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (19,6,2,'18','176','90','normal','140',10,'2022-09-08');
INSERT INTO `patient_visit_tbl`(`patient_visit_id_i`, `patient_id_i`, `doctor_id_i`, `bmi_c`, `weight_c`, `temperature_c`, `pulse_rate_c`, `blood_pressure_c`, `lab_report_id_i`, `followup_date_d`) VALUES (20,4,2,'18','176','90','normal','140',10,'2022-09-08');



-- --------
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (1,2,2, 1,'3 times','1','2022-01-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (2,2,2, 1,' 3 times','1','2022-01-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (3,3,2, 2,' 3 times','1','2022-01-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (4,5,3, 8,' 3 times','1','2022-01-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (5,4,4, 7,' 3 times','1','2022-01-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (6,2,5, 2,' 1 times','1','2022-01-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (7,4,2, 1,' 1 times','1','2022-05-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (8,2,6, 4,' 1 times','1','2022-02-03','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (9,5,2, 5,' 3 times','1','2022-03-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (10,5,2, 7,' 3 times','1','2022-05-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (11,7,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (12,12,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (13,11,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (14,12,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (15,12,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (16,7,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (17,6,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (18,6,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (19,8,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (20,4,2, 9,' 2 times','2','2022-04-01','2022-09-09');
INSERT INTO `prescription_tbl`(`prescription_id_i`, `patient_id_i`, `doctor_id_i`, `medicine_id_i`, `dosage_c`, `quantity_c`, `start_date_d`, `end_date_d`) VALUES (21,8,2, 9,' 2 times','2','2022-04-01','2022-09-09');


