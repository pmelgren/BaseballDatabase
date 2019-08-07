CREATE TABLE rs.base_state_lk (
  base_state_lk int DEFAULT NULL,
  base_state varchar(8) DEFAULT NULL,
  description varchar(30) DEFAULT NULL
);

/*Populate base state lookup table with data*/

insert into rs.base_state_lk(base_state_lk,base_state,description) values 
	(0,'___','Empty'),(1,'1__','1B only'),(2,'_2_','2B only'),(3,'12_','1B & 2B'),
	(4,'__3','3B only'),(5,'1_3','1B & 3B'),(6,'_23','2B & 3B'),(7,'123','Loaded');

CREATE TABLE rs.event_result_lk (
  event_result_lk int NOT NULL,
  event_result varchar(8) DEFAULT NULL,
  description varchar(30) DEFAULT NULL
);

/*Data for the table lkup_cd_event */

insert into rs.event_result_lk(event_result_lk,event_result,description) values 
	(2,'Out','Generic Out'),(3,'K','Strikeout'),(4,'SB','Stolen Base'),(5,'DI','Defensive Indifferen'),
	(6,'CS','Caught Stealing'),(8,'PK','Pickoff'),(9,'WP','Wild Pitch'),(10,'PB','Passed Ball'),(11,'BK','Balk'),
	(12,'OA','Other Advance'),(13,'FE','Foul Error'),(14,'BB','Walk'),(15,'IBB','Intentional Walk'),
	(16,'HBP','Hit By Pitch'),(17,'XI','Interference'),(18,'ROE','Error'),(19,'FC','Fielders Choice'),
	(20,'1B','Single'),(21,'2B','Double'),(22,'3B','Triple'),(23,'HR','Homerun');
