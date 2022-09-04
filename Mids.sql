#Create a database YourName (Basit)  
Create database Maimoona_Khilji;
create table patient(
	PID  int PRIMARY KEY auto_increment,
	p_Name varchar(255)
	check ( P_Name in ("Maimoona Khilji","Naseer Ahmad","Saleem Ahmad" ) )
);

create table Treatment(
	TID int PRIMARY KEY auto_increment,
	T_Name varchar(255)
);
create table patient_treatment(
	Date date DEFAULT "2001-08-04",
    PID int,
    TID int,
	Foreign key (PID) references Patient(PID),
	Foreign key (TID) references Treatment(TID)
);

insert into Patient(P_Name)
values ("Maimoona Khilji" );

SELECT * FROM patient;

insert into treatment
values (4,"Malaria");

SELECT * FROM treatment;


insert into Patient_treatment (PID,TID)
values (1, 4 );

UPDATE Patient_treatment
SET Date="2021-09-09"
WHERE PID = 1;

SELECT * FROM patient_treatment;

show create table Patient;
show create table Patient;
show create table Patient;