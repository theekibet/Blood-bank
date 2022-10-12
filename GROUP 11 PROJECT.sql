show databases;
create database Blood_Bank_Management;
use Blood_Bank_Management ;
create table location
(
loc_ID int  AUTO_INCREMENT NOT NULL , 
loc_name varchar(25)not null,
CONSTRAINT PRIMARY KEY (loc_ID)
);


insert into location ( loc_ID,loc_name)values( 27837,'Kawangware');
insert into location ( loc_ID,loc_name)values( 27835,'Karen');
insert into location ( loc_ID,loc_name)values( 27834,'Langata');
insert into location ( loc_ID,loc_name)values( 27833,'Kibra');
insert into location ( loc_ID,loc_name)values( 27832,'Nairobi West');
insert into location ( loc_ID,loc_name)values( 27831,'Dandora');
insert into location ( loc_ID,loc_name)values( 27830,'Kayole');
insert into location ( loc_ID,loc_name)values( 27829,'Kariobangi South');
insert into location ( loc_ID,loc_name)values( 27828,'Makadara');
insert into location ( loc_ID,loc_name)values( 27827,'Umoja');
insert into location ( loc_ID,loc_name)values( 27826,'Dagorreti');
insert into location ( loc_ID,loc_name)values( 27825,'Embakasi');
insert into location ( loc_ID,loc_name)values( 27824,'Central');
insert into location ( loc_ID,loc_name)values( 27823,'Pumwani');
insert into location ( loc_ID,loc_name)values( 27822,'Westlands');
insert into location ( loc_ID,loc_name)values( 27821,'Starehe');
insert into location ( loc_ID,loc_name)values( 27820,'Kamukunji');
insert into location ( loc_ID,loc_name)values( 27819,'Mathare');
insert into location ( loc_ID,loc_name)values( 27818,'Kasarani');
insert into location ( loc_ID,loc_name)values( 27817,'Ruaraka');

select*from location;



create table registration_staff
(
rs_ID int  AUTO_INCREMENT NOT NULL , 
rs_name varchar(40) not null,
sex varchar(1)null,
email_ID varchar(20),
Phno varchar(20)null,
CONSTRAINT PRIMARY KEY(rs_ID)
);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3765,'Angie','F','Angie@gmail.com',072453);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3764,'Danko','M','Danko@gmail.com',0712546);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3763,'Lucy','F','Lucy@gmail.com',0728373);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3762,'Peris','F','Peris@gmail.com',0725435);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3761,'Buli','M','BUli@gmail.com',078939);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3760,'Kamole','M','Kamole@gmail.com',089920);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3759,'Mukeli','F','Mukeli@gmail.com',07299283);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3758,'Swadhi','M','Swadhi@gmail.com',0802903);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3757,'Bingo','F','Bingo@gmail.com',08939277);
insert into registration_staff (rs_ID,rs_name,sex,email_ID,Phno)values(3756,'Baraza','M','Baraza@gmail.com',0908837);
select* from registration_staff;

desc registration_staff;


create table donor(
 dID int(11)  AUTO_INCREMENT NOT NULL ,
dname varchar(50)not null,
sex varchar(1)not null,
age int not null,
dreg_date date not null ,
email_ID varchar(20) null,
Phno varchar(20)  null,
db_grp varchar(2) not null,
loc_ID int(30)  ,
rs_ID int(30) ,
CONSTRAINT PRIMARY KEY(dID),
CONSTRAINT FOREIGN KEY (loc_ID) REFERENCES location(loc_ID),
CONSTRAINT FOREIGN KEY (rs_ID) REFERENCES registration_staff(rs_ID) 
);


insert into donor(dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36567,'Jorof','M',45,'2022-03-24','Jorof@gmail.com','087626','A',27837,3765);
insert into donor(dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36568,'Njue','F',30,'2022-03-25','Njue@gmail.com','087634','O',27835,3764);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36569,'Nassif','M',25,'2022-03-26','Nass@gmail.com','087235','B+',27834,3763);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36570,'Jennifer','F',35,'2022-03-27','Jenni@gmail.com','045626','B',27833,3762);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36571,'Sonia','F',26,'2022-03-28','Sonia@gmail.com','087986','A',27832,3761);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36572,'Davis','M',24,'2022-03-29','Davis@gmail.com','087626','A+',27831,3759);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36573,'Brian','M',31,'2022-03-30','Brian@gmail.com','088846','A',27830,3758);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36574,'Muli','F',34,'2022-03-31','Muli@gmail.com','097656','O',27829,3757);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36575,'Shaku','F',40,'2022-04-01','	Shaku@gmail.com','067756','B+',27822,3756);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36576,'Bondo','M',50,'2022-04-02','Bondo@gmail.com','088786','O',27820,3758);
insert into donor(dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36577,'Njoroge','M',55,'2022-04-03','Njoroge@gmail.com','088626','A',27837,3763);
insert into donor(dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36578,'Njulus','F',35,'2022-04-04','Njulus@gmail.com','0866634','O',27835,3762);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36579,'Narja','M',25,'2022-04-05','Narja@gmail.com','000235','B+',27834,3757);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36580,'Jennitoz','F',15,'2022-04-06','Jenniz@gmail.com','049926','B',27833,3758);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36581,'Sonko','F',35,'2022-04-07','Son@gmail.com','087786','A',27832,3761);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36582,'Daniel','M',44,'2022-04-08','Daniel@gmail.com','086626','A+',27831,3765);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36583,'Brikich','M',55,'2022-04-09','Brikich@gmail.com','055846','A',27830,3764);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36584,'Muamwa','F',25,'2022-04-10','Muam@gmail.com','094456','O',27829,3758);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36585,'Shakur','F',45,'2022-04-11','Shakur@gmail.com','062256','B+',27822,3765);
insert into donor (dID,dname,sex,age,dreg_date,email_ID,Phno,db_grp,Loc_ID,rs_ID) values(36586,'Bundez','M',35,'2022-04-12','Bundez@gmail.com','083386','O',27820,3761);
select*from donor;

desc donor;



create table Blood_Processing_Manager(
bm_ID int(13)  AUTO_INCREMENT NOT NULL , 
bm_name varchar(40)not null,
sex varchar(2)not null,
email_ID varchar(30)not null,
Phno int(13)null,
CONSTRAINT PRIMARY KEY(bm_ID)
);

insert into Blood_Processing_Manager(bm_ID,bm_name,sex,email_ID,Phno)values(9878,'Quiver','F','Quiver@gmail.com',09786);
 Select*from Blood_Processing_Manager;
 
 desc Blood_Processing_Manager;
 
create table Blood_recipient (
rID int  AUTO_INCREMENT NOT NULL , 
rName varchar(40)not null,
sex varchar(1)not null,
r_regdate date not null,
b_qnty int not null,
rb_grp varchar(3)not null,
age int(3) not null,
rs_ID int not null ,
loc_ID int not null,
bm_ID int not null,
email_ID varchar(20)null,
Phno int(12)null,
CONSTRAINT PRIMARY KEY(rID),
CONSTRAINT FOREIGN KEY (rs_ID) REFERENCES registration_staff(rs_ID),
CONSTRAINT FOREIGN KEY (loc_ID) REFERENCES location(loc_ID),
CONSTRAINT FOREIGN KEY (bm_ID) REFERENCES Blood_Processing_Manager(bm_ID) 
);

insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46537,'Brinner','F','2022-04-05',3,'A',45,3764,27834,9878,'Brinner@gmail.com',07234);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46536,'White','F','2022-04-06',3,'O',35,3764,27835,9878,'White@gmail.com',078733);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46535,'Yelozi','M','2022-04-07',3,'AB',21,3763,27834,9878,'Yelozi@gmail.com',0783726);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46534,'Bundes','F','2022-04-08',3,'O+',27,3762,27833,9878,'Bundes@gmail.com',073922);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46533,'zender','M','2022-04-09',3,'O',25,3761,27832,9878,'zender@gmail.com',073546);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46532,'Luke','F','2022-04-10',3,'A',67,3759,27831,9878,'Luke@gmail.com',07998);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46531,'Jesus','F','2022-04-11',3,'B',10,3758,27830,9878,'Jesus@gmail.com',075646);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46530,'Mbalo','M','2022-04-12',3,'O',15,3757,27829,9878,'Mbalo@gmail.com',072345);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46529,'Shinku','F','2022-04-13',3,'A',33,3756,27822,9878,'Shinku@gmail.com',079993);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46528,'Adele','F','2022-04-14',3,'B',88,3754,278,9868,'Adele@gmail.com',074352);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46527,'Bringo','M','2022-04-15',3,'B+',19,3762,27837,9878,'Bringo@gmail.com',07222);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46526,'Whinoz','F','2022-04-16',3,'A',16,3764,27835,9878,'Whinoz@gmail.com',070093);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46525,'Yelion','M','2022-04-17',3,'B',40,3763,27834,9878,'Yelion@gmail.com',075364);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46524,'Bunda','F','2022-04-18',3,'A',46,3762,27833,9878,'Bunda@gmail.com',070101);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46523,'zendaya','F','2022-04-19',3,'O',41,3761,27832,9878,'zendaya@gmail.com',070202);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46522,'Lukaku','M','2022-04-20',3,'B+',43,3759,27831,9878,'Lukaku@gmail.com',070303);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46521,'Jerusa','F','2022-04-21',3,'A',33,3758,27830,9878,'Jerusa@gmail.com',070404);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46520,'Mbeko','F','2022-04-22',3,'B',22,3757,27829,9878,'Mbeko@gmail.com',070909);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46519,'Shura','F','2022-04-23',3,'O',25,3756,27828,9878,'Shura@gmail.com',098373);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46518,'Adioz','F','2022-04-24',3,'A',55,3757,27820,9878,'Adioz@gmail.com',0945377);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46517,'Lusaka','M','2022-04-25',3,'B+',77,3758,27831,9878,'Lusaka@gmail.com',09356);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46516,'Tevin','M','2022-04-26',3,'A',40,3759,27830,9878,'Tevin@gmail.com',098873);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46515,'Bravin','M','2022-04-27',3,'B',33,3760,27829,9878,'Bravin@gmail.com',08976);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46514,'Mobutu','M','2022-04-28',3,'O',27,3763,27822,9878,'Mobutu@gmail.com',09873);
insert into  Blood_recipient(rID,rName,sex,r_regdate,b_qnty,rb_grp,age,rs_ID,loc_ID,bm_ID,email_ID,Phno)values(46513,'Juventus','F','2022-04-29',3,'A',45,3760,27820,9878,'Juventus@gmail.com',09837);
select*from Blood_recipient;

desc Blood_recipient;


create table Disease_Recognizer(
drecog_ID int  AUTO_INCREMENT NOT NULL , 
drecog_name varchar(20) not null,
sex varchar(2)not null,
email_ID varchar(30)not null,
Phno int(13)null,
CONSTRAINT PRIMARY KEY (drecog_ID)
);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35647,'Dwayne','M','Dwayne@gmail.com',07564);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35646,'Mbale','F','Mbale@gmail.com',0863);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35645,'Shanice','M','Shanice@gmail.com',09554);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35644,'Munira','F','Munira@gmail.com',09553);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35643,'Shakil','M','Shakil@gmail.com',07936);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35642,'Bindi','F','Bindi@gmail.com',09874);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35641,'Mala','M','Mala@gmail.com',08737);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35640,'Sean','F','Sean@gmail.com',09837);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35639,'Paul','M','Paul@gmail.com',04563);
insert into Disease_Recognizer(drecog_ID,drecog_name,sex,email_ID,Phno)values(35648,'Banda','F','Banda@gmail.com',07832);
select*from Disease_Recognizer;

desc  Disease_Recognizer;

create table Blood_sample(
sample_no int AUTO_INCREMENT not null,
b_group varchar(3)not null,
drecog_ID int not null,
state varchar(30) not null,
bm_ID int not null,
CONSTRAINT PRIMARY KEY(sample_no),
CONSTRAINT FOREIGN KEY (drecog_ID) REFERENCES Disease_Recognizer (drecog_ID),
CONSTRAINT FOREIGN KEY (bm_ID) REFERENCES Blood_Processing_Manager(bm_ID) 
);

insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A',12,35647,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('B',13,35646,'bad',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('O',14,35645,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('AB',15,35644,'bad',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('B+',16,35643,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A+',17,35642,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('B',18,35641,'bad',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A+',19,35640,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('O',20,35639,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A',21,35647,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A',22,35647,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('B',23,35646,'bad',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('O',24,35645,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('AB',25,35644,'bad',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('B+',26,35643,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A',27,35642,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('B',28,35641,'bad',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A+',29,35640,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('O',30,35639,'good',9878);
insert into Blood_sample(b_group,sample_no,drecog_ID,state,bm_ID)values('A',31,35647,'good',9878);
select*from Blood_sample;


desc Blood_sample;


create table Hospital(
hID int  AUTO_INCREMENT NOT NULL , 
hb_qnty int not null,
hb_grp varchar(3)not null,
hName varchar(30)not null,
loc_ID int(13) not null,
bm_ID int(14)not null,
CONSTRAINT PRIMARY KEY (hID),
CONSTRAINT FOREIGN KEY (loc_ID) REFERENCES location(loc_ID),
CONSTRAINT FOREIGN KEY (bm_ID) REFERENCES Blood_Processing_Manager(bm_ID) 
);

insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4312,2,'B','Kawangware Hospital',27837,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4313,4,'O','Karen Hospital',27835,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4314,3,'A','Langata Hospital',27834,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4315,7,'AB','Kibera Hospital',27833,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4316,10,'O','Nairobi West Hospital',27832,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4317,7,'A','Dandora Hospital',27831,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4318,9,'B+','Kayole Hospital',27830,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4319,3,'B','Kariobangi South Hospital',27829,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4320,6,'A','Makadara Hospital',27829,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4321,8,'O','Umoja Hospital',27829,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4322,16,'B',' Njiru Hospital',27828,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4323,20,'O','Huruma Hospital',27827,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4324,2,'A',' Mathare Hospital',27826,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4325,3,'AB',' Starehe Hospital',27825,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4326,7,'O','Kasarani Hospital',27824,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4327,2,'A','Bahati Hospital',27823,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4328,5,'B+','Roysambu Hospital',27822,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4329,9,'B',' Kangemi Hospital',27821,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4330,8,'A',' Parklands Hospital',27820,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4331,10,'O','Kilimani Hospital',27819,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4332,2,'A','Kamukunji Hospital',27822,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4333,12,'O',' Korogocho Hospital',27825,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4334,2,'B','Kahawa Hospital',27819,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4335,2,'O','Kariokor Hospital',27834,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4336,3,'A','Maringo Hospital',27818,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4337,4,'AB','Embakasi Hospital',27817,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4338,6,'O','Kenyatta  Hospital',27833,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4339,7,'A','Riruta Hospital',27835,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4340,8,'B+','Laini saba Hospital',27832,9878);
insert into Hospital(hID,hb_qnty,hb_grp,hName,loc_ID,bm_ID)values(4341,6,'B','Mukuru kkwa Njenga Hospital',27832,9878);
select*from Hospital;

desc Hospital;

Show tables;

/*SQL Query to show the uncontaminated blood samples verified by Disease recognizer Dwayne */

select sample_no,b_group
 FROM Blood_sample,disease_recognizer 
 WHERE Blood_sample.drecog_ID=Disease_Recognizer.drecog_ID
 AND drecog_name='Dwayne' AND state='good'


/*SQL Query to Show the donors having the blood groups that are required by recipients living in the same location. Show the recipient details also*/

SELECT dID,dName,rID,rName FROM  donor,blood_recipient 
WHERE db_grp=rb_grp AND donor.loc_ID=blood_recipient.loc_ID


/*SQL Query to  Show the donor and recipients details having same blood group registered by staff Tania on the same date*/

select dID,dName,rID,rName 
from donor,blood_recipient,registration_staff
where db_grp=rb_grp AND dreg_date=r_regdate AND donor.rs_ID=blood_recipient.rs_ID and rs_name=Tania


/*SQL Query to  find out the recipient name who took A+ type  blood from the donor(also show donor’s name) and both’s district ids must be ‘10’*/ */

select dName,rName,loc_name from
 donor,blood_recipient,location where donor.db_grp='A+'
and
donor.db_grp=blood_recipient.rb_grp
and location.loc_ID='10'


/*SQL Query to  find out donor name, id who is registered by registration staff_id ’104’ and show the registration staff’s name also */

select donor.dName,dID,rs_name from donor,registation_staff where
donor.rs_ID=registration_staff.rs_ID and registration_staff.rs_ID='104'


/*SQL Query to   List the name, age and id of donor who is registered by registration staff ‘Bushra’ or who have B+ blood group */

select dName,age,dID from donor,registration_staff where donor.rs_ID=registration_staff.rs_ID
union
select dName,age,dID from donor where db_grp='B+'



      
      
      