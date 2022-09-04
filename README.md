# SQL
MID TERM ASSESSMENT 
Database Systems (Lab)

1.a Create a database YourName

<pre>
Create database Maimoona_Khilji;
</pre>

1. b Create the following tables using SQL Commands. 
![image](https://user-images.githubusercontent.com/64362437/188324374-39f094e9-04af-4b3d-ac86-44d4c4b5c5e0.png)

Guidelines for Q1. b
1.	Select appropriate datatype for each attribute. 
2.	Identify keys.
3.	Autoincrement PID and TID.
4.	Default Patient treatment Date should be your date of birth.
5.	System should check P_Name should be (Your Name OR Your Father Name OR Your Grandfather Name) if any other value inserted in P_Name system should give an error while insertion.
6.	Attach screenshot of each table schema (Table Structure MySQL Workbench)


<pre>
CREATE table patient (
PID  int PRIMARY KEY auto_increment,
p_Name varchar(255)
CHECK ( P_Name in ("Maimoona Khilji","Naseer Ahmad","Saleem Ahmad" ) )
);
</pre>
![image](https://user-images.githubusercontent.com/64362437/188324439-794df2bd-0b02-433b-b64f-1aac132e9845.png)


<pre>
CREATE TABLE Treatment(
				TID int PRIMARY KEY auto_increment,
T_Name varchar(255)
);
</pre>
![image](https://user-images.githubusercontent.com/64362437/188324444-22616210-7d8c-4bdd-beb6-91b67e72f766.png)

<pre>
CREATE TABLE patient_treatment(
Date date DEFAULT "2001-08-04",
PID int,
TID int,
Foreign key (PID) references Patient (PID),
Foreign key (TID) references Treatment(TID)
);
</pre>
![image](https://user-images.githubusercontent.com/64362437/188324461-4ab6ad76-45fc-4b2f-8173-3a280ddcc49d.png)

#### Table structures

![image](https://user-images.githubusercontent.com/64362437/188324469-588f56bb-0150-4f70-84e5-b3cc31ce3918.png)


1c. Write query to insert 1 valid record in each table (Patient, Patient_Treatment, Treatment ).
[3 Marks]
Guidelines for Q1. c
Where in First table the name of patient should be your name & In treatment table you should enter any disease name starting with the first alphabet of your name.
Sample Output of Patient & Treatment Table:
Patient
PID	P_Name
1	Basit
Treatment 
TID	T_Name
20	Blood Clot.

<pre>
# I just entered the name, as PID is auto-incremented so it will automatically start with 1
INSERT INTO Patient(P_Name)
VALUES ("Maimoona Khilji" );
</pre>
![image](https://user-images.githubusercontent.com/64362437/188324575-c3bb01fe-e83b-4e97-a8ff-7c88e6aac91f.png)

<pre>
#we can manually insert the data into auto-incremented column as well.

insert into treatment
values (4,"Malaria");
</pre>
![image](https://user-images.githubusercontent.com/64362437/188324593-9189cd6a-4819-4ffc-9c95-b16379aaad09.png)

<pre>
#I inserted the data of PID and TID. As for date I already used default function so I can insert only into these two columns without inserting into the date column.


INSERT INTO Patient_treatment (PID,TID)
values (1, 4 );
</pre>
![image](https://user-images.githubusercontent.com/64362437/188324607-8594653a-0784-4586-baf8-977f9e70a7f0.png)

Note: here date is default date that is my date of birth.

