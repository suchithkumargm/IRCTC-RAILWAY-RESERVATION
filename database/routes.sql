-- suchith from here
use irctcproject;

-- 16545 YPR HPT EXP
create table `11302`(
    train_no varchar(10) references train(train_no),
    stop_no integer auto_increment primary key,
    station_id varchar(10),
    arrival_time varchar(20),
    cost integer
);

-- trigger for adding cost with respect to stop_no
DROP TRIGGER IF EXISTS cost;
DELIMITER $$
CREATE TRIGGER  cost
BEFORE INSERT
ON 
`<train_no>` 	
FOR EACH ROW 
	BEGIN
		IF (SELECT count(*) FROM`12627`)=0 THEN
			SET NEW.cost=0;
		ELSE 
			BEGIN
				DECLARE id_val INT DEFAULT 0;
				SELECT LAST_INSERT_ID() INTO id_val;
				SET NEW.cost = id_val*10;
			END;
		END IF;
	END;
$$
DELIMITER ;

-- insert values into train 16545
insert into `16545`(train_no,station_id,arrival_time) values('16545','YPR','20:25');
insert into `16545`(train_no,station_id,arrival_time) values('16545','BAW','20:35');
insert into `16545`(train_no,station_id,arrival_time) values('16545','KIAT','21:15');
insert into `16545`(train_no,station_id,arrival_time) values('16545','TK','21:22');
insert into `16545`(train_no,station_id,arrival_time) values('16545','GBB','21:39');
insert into `16545`(train_no,station_id,arrival_time) values('16545','TTR','22:18');
insert into `16545`(train_no,station_id,arrival_time) values('16545','ASK','22:45');
insert into `16545`(train_no,station_id,arrival_time) values('16545','DRU','23:19');
insert into `16545`(train_no,station_id,arrival_time) values('16545','RRB','23:30');
insert into `16545`(train_no,station_id,arrival_time) values('16545','AJP','23:46');
insert into `16545`(train_no,station_id,arrival_time) values('16545','SHV','23:56');
insert into `16545`(train_no,station_id,arrival_time) values('16545','HSD','00:07');
insert into `16545`(train_no,station_id,arrival_time) values('16545','RGI','00:17');
insert into `16545`(train_no,station_id,arrival_time) values('16545','HLK','00:24');
insert into `16545`(train_no,station_id,arrival_time) values('16545','JRU','00:55');
insert into `16545`(train_no,station_id,arrival_time) values('16545','CTA','01:38');
insert into `16545`(train_no,station_id,arrival_time) values('16545','BAHI','01:59');
insert into `16545`(train_no,station_id,arrival_time) values('16545','CHKE','02:17');
insert into `16545`(train_no,station_id,arrival_time) values('16545','MOMU','03:01');
insert into `16545`(train_no,station_id,arrival_time) values('16545','RDG','04:13');
insert into `16545`(train_no,station_id,arrival_time) values('16545','SLM','04:44');
insert into `16545`(train_no,station_id,arrival_time) values('16545','OBM','05:09');
insert into `16545`(train_no,station_id,arrival_time) values('16545','BAY','05:55');
insert into `16545`(train_no,station_id,arrival_time) values('16545','KDN','06:29');
insert into `16545`(train_no,station_id,arrival_time) values('16545','DAJ','06:39');
insert into `16545`(train_no,station_id,arrival_time) values('16545','TNGL','06:50');
insert into `16545`(train_no,station_id,arrival_time) values('16545','GNR','07:01');
insert into `16545`(train_no,station_id,arrival_time) values('16545','HPT','07:50');
insert into `16545`(train_no,station_id,arrival_time) values('16545','MRB','08:10');
insert into `16545`(train_no,station_id,arrival_time) values('16545','GIN','08:45');
insert into `16545`(train_no,station_id,arrival_time) values('16545','BDGU','09:04');
insert into `16545`(train_no,station_id,arrival_time) values('16545','JBGD','09:15');
insert into `16545`(train_no,station_id,arrival_time) values('16545','CKBK','09:27');
insert into `16545`(train_no,station_id,arrival_time) values('16545','GGVT','09:44');
insert into `16545`(train_no,station_id,arrival_time) values('16545','SRNM','10:00');
insert into `16545`(train_no,station_id,arrival_time) values('16545','SIDG','10:07');
insert into `16545`(train_no,station_id,arrival_time) values('16545','KTGG','10:45');


-- 12649 Sampark Kranti

insert into `12649`(train_no,station_id,arrival_time) values('12649','YPR','13:50');
insert into `12649`(train_no,station_id,arrival_time) values('12649','TK','14:43');
insert into `12649`(train_no,station_id,arrival_time) values('12649','ASK','15:53');
insert into `12649`(train_no,station_id,arrival_time) values('12649','DVG','17:50');
insert into `12649`(train_no,station_id,arrival_time) values('12649','HVR','18:13');
insert into `12649`(train_no,station_id,arrival_time) values('12649','UBL','21:05');
insert into `12649`(train_no,station_id,arrival_time) values('12649','GDG','22:08');
insert into `12649`(train_no,station_id,arrival_time) values('12649','KBL','22:53');
insert into `12649`(train_no,station_id,arrival_time) values('12649','HPT','23:25');
insert into `12649`(train_no,station_id,arrival_time) values('12649','BAY','01:05');
insert into `12649`(train_no,station_id,arrival_time) values('12649','GTL','02:05');
insert into `12649`(train_no,station_id,arrival_time) values('12649','KRNT','04:19');
insert into `12649`(train_no,station_id,arrival_time) values('12649','KCG','08:10');
insert into `12649`(train_no,station_id,arrival_time) values('12649','BPQ','14:10');
insert into `12649`(train_no,station_id,arrival_time) values('12649','NGP','17:15');
insert into `12649`(train_no,station_id,arrival_time) values('12649','BPL','23:10');
insert into `12649`(train_no,station_id,arrival_time) values('12649','VGLB','02:40');
insert into `12649`(train_no,station_id,arrival_time) values('12649','GWL','03:53');
insert into `12649`(train_no,station_id,arrival_time) values('12649','NZM','08:10');

select * from `12649`;

-- 16592 Hampi Express    and 16591 is ulta of 16592

insert into `16592`(train_no,station_id,arrival_time) values('16592','MYS','18:50');
insert into `16592`(train_no,station_id,arrival_time) values('16592','PANP','19:09');
insert into `16592`(train_no,station_id,arrival_time) values('16592','MYA','19:37');
insert into `16592`(train_no,station_id,arrival_time) values('16592','MAD','19:58');
insert into `16592`(train_no,station_id,arrival_time) values('16592','CPT','20:15');
insert into `16592`(train_no,station_id,arrival_time) values('16592','RMGM','20:26');
insert into `16592`(train_no,station_id,arrival_time) values('16592','BID','20:39');
insert into `16592`(train_no,station_id,arrival_time) values('16592','KGI','20:59');
insert into `16592`(train_no,station_id,arrival_time) values('16592','SBC','21:40');
insert into `16592`(train_no,station_id,arrival_time) values('16592','YPR','22:00');
insert into `16592`(train_no,station_id,arrival_time) values('16592','YNK','22:18');
insert into `16592`(train_no,station_id,arrival_time) values('16592','DBU','22:41');
insert into `16592`(train_no,station_id,arrival_time) values('16592','GBD','23:17');
insert into `16592`(train_no,station_id,arrival_time) values('16592','HUP','23:46');
insert into `16592`(train_no,station_id,arrival_time) values('16592','PKD','00:26');
insert into `16592`(train_no,station_id,arrival_time) values('16592','DMM','01:58');
insert into `16592`(train_no,station_id,arrival_time) values('16592','GTL','04:35');
insert into `16592`(train_no,station_id,arrival_time) values('16592','BAY','05:50');
insert into `16592`(train_no,station_id,arrival_time) values('16592','TNGL','06:28');
insert into `16592`(train_no,station_id,arrival_time) values('16592','HPT','07:00');
insert into `16592`(train_no,station_id,arrival_time) values('16592','MRB','07:14');
insert into `16592`(train_no,station_id,arrival_time) values('16592','GIN','07:26');
insert into `16592`(train_no,station_id,arrival_time) values('16592','KBL','07:40');
insert into `16592`(train_no,station_id,arrival_time) values('16592','BNP','07:59');
insert into `16592`(train_no,station_id,arrival_time) values('16592','GDG','08:42');
insert into `16592`(train_no,station_id,arrival_time) values('16592','NGR','09:09');
insert into `16592`(train_no,station_id,arrival_time) values('16592','UBL','10:20');

insert into `16591`(train_no,station_id,arrival_time) values('16591','UBL','10:20');
insert into `16591`(train_no,station_id,arrival_time) values('16591','NGR','09:09');
insert into `16591`(train_no,station_id,arrival_time) values('16591','GDG','08:42');
insert into `16591`(train_no,station_id,arrival_time) values('16591','BNP','07:59');
insert into `16591`(train_no,station_id,arrival_time) values('16591','KBL','07:40');
insert into `16591`(train_no,station_id,arrival_time) values('16591','GIN','07:26');
insert into `16591`(train_no,station_id,arrival_time) values('16591','MRB','07:14');
insert into `16591`(train_no,station_id,arrival_time) values('16591','HPT','07:00');
insert into `16591`(train_no,station_id,arrival_time) values('16591','TNGL','06:28');
insert into `16591`(train_no,station_id,arrival_time) values('16591','BAY','05:50');
insert into `16591`(train_no,station_id,arrival_time) values('16591','GTL','04:35');
insert into `16591`(train_no,station_id,arrival_time) values('16591','DMM','01:58');
insert into `16591`(train_no,station_id,arrival_time) values('16591','PKD','00:26');
insert into `16591`(train_no,station_id,arrival_time) values('16591','PKD','00:26');
insert into `16591`(train_no,station_id,arrival_time) values('16591','GBD','23:17');
insert into `16591`(train_no,station_id,arrival_time) values('16591','DBU','22:41');
insert into `16591`(train_no,station_id,arrival_time) values('16591','YNK','22:18');
insert into `16591`(train_no,station_id,arrival_time) values('16591','YPR','22:00');
insert into `16591`(train_no,station_id,arrival_time) values('16591','SBC','21:40');
insert into `16591`(train_no,station_id,arrival_time) values('16591','KGI','20:59');
insert into `16591`(train_no,station_id,arrival_time) values('16591','BID','20:39');
insert into `16591`(train_no,station_id,arrival_time) values('16591','RMGM','20:26');
insert into `16591`(train_no,station_id,arrival_time) values('16591','CPT','20:15');
insert into `16591`(train_no,station_id,arrival_time) values('16591','MAD','19:58');
insert into `16591`(train_no,station_id,arrival_time) values('16591','MYA','19:37');
insert into `16591`(train_no,station_id,arrival_time) values('16591','PANP','19:09');
insert into `16591`(train_no,station_id,arrival_time) values('16591','MYS','18:50');

select * from `16591`;

-- 22691 Rajdhani Express

insert into `22691`(train_no,station_id,arrival_time) values('22691','SBC','20:00');
insert into `22691`(train_no,station_id,arrival_time) values('22691','SSPN','22:26');
insert into `22691`(train_no,station_id,arrival_time) values('22691','GTL','01:00');
insert into `22691`(train_no,station_id,arrival_time) values('22691','RC','02:38');
insert into `22691`(train_no,station_id,arrival_time) values('22691','SEM','04:30');
insert into `22691`(train_no,station_id,arrival_time) values('22691','SC','07:05');
insert into `22691`(train_no,station_id,arrival_time) values('22691','KZJ','08:48');
insert into `22691`(train_no,station_id,arrival_time) values('22691','BPQ','12:20');
insert into `22691`(train_no,station_id,arrival_time) values('22691','NGP','14:55');
insert into `22691`(train_no,station_id,arrival_time) values('22691','ET','19:16');
insert into `22691`(train_no,station_id,arrival_time) values('22691','BPL','20:50');
insert into `22691`(train_no,station_id,arrival_time) values('22691','VGLB','00:16');
insert into `22691`(train_no,station_id,arrival_time) values('22691','GWL','01:19');
insert into `22691`(train_no,station_id,arrival_time) values('22691','AGC','02:55');
insert into `22691`(train_no,station_id,arrival_time) values('22691','NZM','05:30');


-- 20607 MGR CHENNAI CENTRAL - MYSURU Vande Bharat Express

insert into `20607`(train_no,station_id,arrival_time) values('20607','MAS','05:50');
insert into `20607`(train_no,station_id,arrival_time) values('20607','KPD','07:21');
insert into `20607`(train_no,station_id,arrival_time) values('20607','SBC','10:20');
insert into `20607`(train_no,station_id,arrival_time) values('20607','MYS','12:20');

select * from `20607`;

-- 16217 Mys Snsi Express

insert into `16217`(train_no,station_id,arrival_time) values('16217','MYS','05:30');
insert into `16217`(train_no,station_id,arrival_time) values('16217','MYA','06:11');
insert into `16217`(train_no,station_id,arrival_time) values('16217','KGI','07:16');
insert into `16217`(train_no,station_id,arrival_time) values('16217','SBC','08:00');
insert into `16217`(train_no,station_id,arrival_time) values('16217','YPR','08:16');
insert into `16217`(train_no,station_id,arrival_time) values('16217','TK','09:05');
insert into `16217`(train_no,station_id,arrival_time) values('16217','ASK','10:45');
insert into `16217`(train_no,station_id,arrival_time) values('16217','RRB','11:25');
insert into `16217`(train_no,station_id,arrival_time) values('16217','JRU','12:13');
insert into `16217`(train_no,station_id,arrival_time) values('16217','CTA','12:58');
insert into `16217`(train_no,station_id,arrival_time) values('16217','RDG','13:55');
insert into `16217`(train_no,station_id,arrival_time) values('16217','BAY','16:35');
insert into `16217`(train_no,station_id,arrival_time) values('16217','HPT','17:50');
insert into `16217`(train_no,station_id,arrival_time) values('16217','KBL','18:28');
insert into `16217`(train_no,station_id,arrival_time) values('16217','GDG','19:35');
insert into `16217`(train_no,station_id,arrival_time) values('16217','BDM','21:09');
insert into `16217`(train_no,station_id,arrival_time) values('16217','BGK','21:48');
insert into `16217`(train_no,station_id,arrival_time) values('16217','BJP','00:05');
insert into `16217`(train_no,station_id,arrival_time) values('16217','SUR','03:00');
insert into `16217`(train_no,station_id,arrival_time) values('16217','KWV','04:04');
insert into `16217`(train_no,station_id,arrival_time) values('16217','SNSI','11:25');

select * from `16217`;
truncate table `16217`;

-- 12627 Karnataka Express
truncate table `12627`;
insert into `12627`(train_no,station_id,arrival_time) values('12627','SBC','19:20');
insert into `12627`(train_no,station_id,arrival_time) values('12627','BNC','19:30');
insert into `12627`(train_no,station_id,arrival_time) values('12627','YNK','20:00');
insert into `12627`(train_no,station_id,arrival_time) values('12627','HUP','21:08');
insert into `12627`(train_no,station_id,arrival_time) values('12627','PKD','21:40');
insert into `12627`(train_no,station_id,arrival_time) values('12627','SSPN','22:09');
insert into `12627`(train_no,station_id,arrival_time) values('12627','DMM','22:53');
insert into `12627`(train_no,station_id,arrival_time) values('12627','ATP','23:29');
insert into `12627`(train_no,station_id,arrival_time) values('12627','GTL','01:14');
insert into `12627`(train_no,station_id,arrival_time) values('12627','AD','01:59');
insert into `12627`(train_no,station_id,arrival_time) values('12627','MALM','02:29');
insert into `12627`(train_no,station_id,arrival_time) values('12627','RC','02:58');
insert into `12627`(train_no,station_id,arrival_time) values('12627','YG','03:59');
insert into `12627`(train_no,station_id,arrival_time) values('12627','WADI','04:55');
insert into `12627`(train_no,station_id,arrival_time) values('12627','KLBG','05:37');
insert into `12627`(train_no,station_id,arrival_time) values('12627','SUR','07:15');
insert into `12627`(train_no,station_id,arrival_time) values('12627','KWV','08:29');
insert into `12627`(train_no,station_id,arrival_time) values('12627','DD','10:15');
insert into `12627`(train_no,station_id,arrival_time) values('12627','ANG','11:40');
insert into `12627`(train_no,station_id,arrival_time) values('12627','BAP','12:48');
insert into `12627`(train_no,station_id,arrival_time) values('12627','KPG','13:47');
insert into `12627`(train_no,station_id,arrival_time) values('12627','MMR','14:50');
insert into `12627`(train_no,station_id,arrival_time) values('12627','JL','16:43');
insert into `12627`(train_no,station_id,arrival_time) values('12627','BSL','17:15');
insert into `12627`(train_no,station_id,arrival_time) values('12627','BAU','18:08');
insert into `12627`(train_no,station_id,arrival_time) values('12627','KNW','19:22');
insert into `12627`(train_no,station_id,arrival_time) values('12627','ET','21:40');
insert into `12627`(train_no,station_id,arrival_time) values('12627','BPL','23:30');
insert into `12627`(train_no,station_id,arrival_time) values('12627','BINA','01:08');
insert into `12627`(train_no,station_id,arrival_time) values('12627','VGLB','02:50');
insert into `12627`(train_no,station_id,arrival_time) values('12627','GWL','04:05');
insert into `12627`(train_no,station_id,arrival_time) values('12627','AGC','05:40');
insert into `12627`(train_no,station_id,arrival_time) values('12627','MTJ','06:28');
insert into `12627`(train_no,station_id,arrival_time) values('12627','NZM','08:31');
insert into `12627`(train_no,station_id,arrival_time) values('12627','NDLS','09:00');

select * from `12627`;
-- shashidhar from here


-- 16546 HPT YPR EXP

insert into `16546`(train_no,station_id,arrival_time)values('16546','KTGG',	'18:0');
insert into `16546`(train_no,station_id,arrival_time)values('16546','SIDG','18:10');
insert into `16546`(train_no,station_id,arrival_time)values('16546','SRNM','18:18');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','GGVT','18:30');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','CKBK','18:48');
insert into `16546`(train_no,station_id,arrival_time)values('16546','JBGD','19:00');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','BDGU','19:10');
insert into `16546`(train_no,station_id,arrival_time)values('16546','GIN','19:45');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','MRB','20:01');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','HPT','20:30');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','GNR','21:00');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','TNGL','21:10');
insert into `16546`(train_no,station_id,arrival_time)values('16546','DAJ','21:22');
insert into `16546`(train_no,station_id,arrival_time)values('16546','KDN','21:33');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','BAY','22:20');
insert into `16546`(train_no,station_id,arrival_time)values('16546','OBM','22:40');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','SLM','22:55');
insert into `16546`(train_no,station_id,arrival_time)values('16546','RDG','23:40');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','MOMU','00:17');
insert into `16546`(train_no,station_id,arrival_time)values('16546','CHKE','00:45');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','BAHI','01:03');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','CTA','01:25');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','JRU','02:05');
insert into `16546`(train_no,station_id,arrival_time)values('16546','HLK','02:22');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','RGI','02:32');
insert into `16546`(train_no,station_id,arrival_time)values('16546','HSD','02:49');
insert into `16546`(train_no,station_id,arrival_time)values('16546','SHV','03:00');
insert into `16546`(train_no,station_id,arrival_time)values('16546','AJP','03:11');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','RRB','03:33');
insert into `16546`(train_no,station_id,arrival_time)values('16546','DRU','03:45');
insert into `16546`(train_no,station_id,arrival_time)values('16546','ASK','04:17');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','TTR','04:48');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','GBB','05:30');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','TK','5:49');
insert into `16546`(train_no,station_id,arrival_time)values('16546','KIAT','05:57');
insert into `16546`(train_no,station_id,arrival_time)values('16546','BAW','06:40');	
insert into `16546`(train_no,station_id,arrival_time)values('16546','YPR','07:25');

select * from `16546`;

-- 12628 Karnataka Express 
insert into `12628`(train_no,station_id,arrival_time)values('12628','NDLS','20:20');
insert into `12628`(train_no,station_id,arrival_time)values('12628','MTJ','21:53');
insert into `12628`(train_no,station_id,arrival_time)values('12628','AG','22:48');
insert into `12628`(train_no,station_id,arrival_time)values('12628','GWL','	00:48');
insert into `12628`(train_no,station_id,arrival_time)values('12628','VGLB','02:20');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','BINA','04:45');
insert into `12628`(train_no,station_id,arrival_time)values('12628','BPL','06:25');
insert into `12628`(train_no,station_id,arrival_time)values('12628','ET','08:10');
insert into `12628`(train_no,station_id,arrival_time)values('12628','KNW','11:07');
insert into `12628`(train_no,station_id,arrival_time)values('12628','BAU','11:58');
insert into `12628`(train_no,station_id,arrival_time)values('12628','BSL','13:05');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','JL','13:38');
insert into `12628`(train_no,station_id,arrival_time)values('12628','MMR','15:40');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','KPG','16:35');
insert into `12628`(train_no,station_id,arrival_time)values('12628','BAP','17:18');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','ANG','18:17');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','DD','19:55');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','KWV','21:20');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','SUR','22:35');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','KLBG','00:15');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','WADI','01:35');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','YG','02:04');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','RC','03:08');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','MALM','03:29');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','AD','03:59');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','GTL','05:20');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','ATP','06:38');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','DMM','07:38');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','SSPN','08:09');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','PKD','08:29');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','HUP','08:59');
insert into `12628`(train_no,station_id,arrival_time)values('12628','YNK','10:30');	
insert into `12628`(train_no,station_id,arrival_time)values('12628','BNC','11:06');
insert into `12628`(train_no,station_id,arrival_time)values('12628','SBC','12:00');

select * from `12628`;

-- 12864 Ypr Howrah Express
insert into `12864`(train_no,station_id,arrival_time)values('12864','SMVB','10:35');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','KJM','10:48');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BWT','11:35');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','KPN','12:02');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','JTJ','12:58');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','KPD','14:15');
insert into `12864`(train_no,station_id,arrival_time)values('12864','TPTY','16:05');	
insert into `12864`(train_no,station_id,arrival_time)values('12864','RU','1630');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','GDR','17:53');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','NLR','18:23');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','OGL','19:48');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','CLX','20:23');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BPP','20:38');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','TEL','21:18');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BZA','22:20');
insert into `12864`(train_no,station_id,arrival_time)values('12864','EE','23:18');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','TDD','23:53');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','RJY','00:38');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','SLO','01:23');	
insert into `12864`(train_no,station_id,arrival_time)values('12864','VSKP','04:35');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','VZM','05:50');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','CHE','06:48');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','PSA','08:10');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BAM','09:10');	
insert into `12864`(train_no,station_id,arrival_time)values('12864','BALU','10:12');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','KUR','11:35');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BBS','12:20');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','CTC','12:55');	
insert into `12864`(train_no,station_id,arrival_time)values('12864','JJKR','13:51');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BHC','14:55');	
insert into `12864`(train_no,station_id,arrival_time) values ('12864','BLS','15:48');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','KGP','17:32');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','MCA','18:22');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','SRC','19:06');
insert into `12864`(train_no,station_id,arrival_time) values ('12864','HWH','19:55');

select * from `12864`;

-- 22626 Mas Double Decker 

insert into`22626` (train_no,station_id,arrival_time)values('22626','SBC','14:30');
insert into`22626` (train_no,station_id,arrival_time)values('22626','BNC','14:40');
insert into`22626` (train_no,station_id,arrival_time)values('22626','KJM','14:52');
insert into`22626` (train_no,station_id,arrival_time)values('22626','BWT','15:40');
insert into`22626` (train_no,station_id,arrival_time)values('22626','KPN','16:04');	
insert into`22626` (train_no,station_id,arrival_time)values('22626','JTJ','16:48');	
insert into`22626` (train_no,station_id,arrival_time)values('22626','VN','17:07');
insert into`22626` (train_no,station_id,arrival_time)values('22626','AB','17:21');
insert into`22626` (train_no,station_id,arrival_time)values('22626','KPD','18:08');	
insert into`22626` (train_no,station_id,arrival_time)values('22626','AJJ','18:58');
insert into`22626` (train_no,station_id,arrival_time)values('22626','PER','19:48');
insert into`22626` (train_no,station_id,arrival_time)values('22626','MAS','20:25');

select * from `22626`;

-- 12658 Chennai Mail

insert into`12658` (train_no,station_id,arrival_time)values('12568','SBC','22:40');	
insert into`12658` (train_no,station_id,arrival_time)values('12568','BNC','22:50');	
insert into`12658` (train_no,station_id,arrival_time)values('12568','BWT','23:38');
insert into`12658` (train_no,station_id,arrival_time)values('12568','JTJ','00:48');
insert into`12658` (train_no,station_id,arrival_time)values('12568','KPD','01:58');
insert into`12658` (train_no,station_id,arrival_time)values('12568','AJJ','02:48');	
insert into`12658` (train_no,station_id,arrival_time)values('12568','PER','03:38');	
insert into`12658` (train_no,station_id,arrival_time)values('12568','MAS','04:20');

select * from `12658`;


-- 16587 Ypr Bkn Express
insert into `16587`(train_no,station_id,arrival_time)values('16587','YPR','11:30');
insert into `16587`(train_no,station_id,arrival_time)values('16587','TK','12:18');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','TTR','13:14');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','ASK','13:35');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','DVG','15:43');
insert into `16587`(train_no,station_id,arrival_time)values('16587','RNR','16:20');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','UBL','19:40');
insert into `16587`(train_no,station_id,arrival_time)values('16587','GDG','21:10');
insert into `16587`(train_no,station_id,arrival_time)values('16587','BGK','23:04');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','BJP','01:20');
insert into `16587`(train_no,station_id,arrival_time)values('16587','SUR','05:00');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','PUNE','09:30');
insert into `16587`(train_no,station_id,arrival_time)values('16587','KYN','12:17');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','BSR','13:20');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','BOR','14:10');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','VAPI','14:52');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','ST','16:16');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','AKV','16:51');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','BRC','17:54');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','ANND','18:35');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','ND','18:51');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','ADI','20:00');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','MSH','21:27');
insert into `16587`(train_no,station_id,arrival_time)values('16587','PNU','23:10');
insert into `16587`(train_no,station_id,arrival_time)values('16587','ABR','23:55');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','FA','01:26');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','RANI','01:41');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','MJ','02:40');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','PMY','03:13');
insert into `16587`(train_no,station_id,arrival_time)values('16587','JU','04:25');
insert into `16587`(train_no,station_id,arrival_time)values('16587','MTD','06:07');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','NGO','07:00');
insert into `16587`(train_no,station_id,arrival_time)values('16587','NOK','08:00');	
insert into `16587`(train_no,station_id,arrival_time)values('16587','BKN','09:35');

select * from `16587`;

-- 11302 Udyan Express 

insert into `11302`(train_no,station_id,arrival_time)values('11302','SBC','20:40');
insert into `11302`(train_no,station_id,arrival_time)values('11302','BNC','20:50');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','YNK','21:20');
insert into `11302`(train_no,station_id,arrival_time)values('11302','DBU','21:39');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','GBD','22:15');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','HUP','22:33');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','PKD','23:09');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','SSPN','23:28');
insert into `11302`(train_no,station_id,arrival_time)values('11302','DMM','00:38');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','ATP','01:08');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','GTL','02:45');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','AD','03:29');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','MALM','04:09');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','RC','04:43');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','KSN','05:09');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','SADP','05:29');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','YG','05:49');
insert into `11302`(train_no,station_id,arrival_time)values('11302','NW','06:09');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','WADI','07:05');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','SDB','07:22');
insert into `11302`(train_no,station_id,arrival_time)values('11302','KLBG','07:57');
insert into `11302`(train_no,station_id,arrival_time)values('11302','GUR','08:34');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','DUD','09:03');
insert into `11302`(train_no,station_id,arrival_time)values('11302','AKOR','09:44');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','SUR','10:55');
insert into `11302`(train_no,station_id,arrival_time)values('11302','KWV','12:00');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','DD','14:25');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','URI','15:13');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','PUNE','16:00');
insert into `11302`(train_no,station_id,arrival_time)values('11302','LNL','17:23');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','KYN','18:52');	
insert into `11302`(train_no,station_id,arrival_time)values('11302','DR','19:42');
insert into `11302`(train_no,station_id,arrival_time)values('11302','CSMT','20:15');

select *from `11302`;