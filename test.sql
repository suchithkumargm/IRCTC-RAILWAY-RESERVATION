show databases;
create database temp;
use temp;
drop database temp;
show tables;

create table ex(
id integer auto_increment primary key,
name varchar(10),
cost integer
);

truncate table ex;
desc ex;
select * from ex;

insert into ex(name) values('s');

delimiter $$
create procedure costpro()
	begin
		Create Trigger cost
		before INSERT ON ex FOR EACH ROW  
		BEGIN 
		set new.cost=10;
        end ;
	end 
$$
delimiter ;

drop procedure costpro;

call costpro();

DELIMITER //  
Create Trigger cost
before INSERT ON ex FOR EACH ROW  
BEGIN 
set new.cost=10;
END //  

drop trigger cost;

DELIMITER //
CREATE PROCEDURE sp_GetMovies()
BEGIN
    
	Create Trigger cost
	before INSERT ON ex FOR EACH ROW  
	set new.cost=10;
	
END //
    
DELIMITER ;

call sp_GetMovies();

select * from ex;