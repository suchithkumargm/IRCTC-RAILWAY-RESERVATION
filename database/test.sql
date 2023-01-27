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

DELIMITER $$
	CREATE PROCEDURE showtrains ()
    BEGIN
		SELECT train_no ,train_name FROM trains;
        END $$
DELIMITER ;
call showtrains();

DROP TRIGGER IF EXISTS cost;
DELIMITER $$
CREATE TRIGGER   cost
BEFORE INSERT
ON 
`<train_no>` 	
FOR EACH ROW 
	BEGIN
		IF (SELECT count (*) FROM `<train_no>`)=0 THEN
			SET NEW. cost = 0;
		ELSE 
			BEGIN
				DECLARE id_val INT DEFAULT 0;
				SELECT LAST_INSERT_ID () INTO id_val;
				SET NEW. cost = id_val *10;
			END;
		END IF;
	END;
$$
DELIMITER ;
