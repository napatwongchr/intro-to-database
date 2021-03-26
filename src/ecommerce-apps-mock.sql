-- users data
DROP TABLE IF EXISTS "users", "customers", "products", "addresses", "orders", "order_items", "categories";


CREATE TABLE users (
  user_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  email VARCHAR ( 50 ) UNIQUE NOT NULL,
  password VARCHAR ( 25 ) NOT NULL,
  created_on VARCHAR ( 100 ) NOT NULL,
  updated_on TIMESTAMP NOT NULL,
  last_logged_in TIMESTAMP
);

CREATE TABLE categories (
  category_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  created_on TIMESTAMP NOT NULL,
  updated_on TIMESTAMP NOT NULL
);


CREATE TABLE products (
  product_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  price INTEGER NOT NULL,
  category_id INTEGER NOT NULL,
  stock_number INTEGER NOT NULL,
  created_on TIMESTAMP NOT NULL,
  updated_on TIMESTAMP NOT NULL
);


CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  user_id INTEGER NOT NULL,
  phone_number VARCHAR (20) NOT NULL,
  firstname VARCHAR (100) NOT NULL,
  lastname VARCHAR (100) NOT NULL
);

CREATE TABLE addresses (
  address_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  customer_id INTEGER NOT NULL,
  district VARCHAR (255),
  subdistrict VARCHAR (255),
  province VARCHAR (50),
  postal VARCHAR (10),
  street VARCHAR (255),
  created_on TIMESTAMP NOT NULL,
  updated_on TIMESTAMP NOT NULL
);



CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  customer_id INTEGER NULL,
  status varchar(255) default NULL,
  created_on TIMESTAMP NOT NULL,
  updated_on TIMESTAMP NOT NULL
);


CREATE TABLE order_items (
  order_item_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  order_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  created_on TIMESTAMP NOT NULL
);


-- users data
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('cursus@risusIn.edu','GJX46LIF7CN','2020-06-25 14:44:21','2020-07-11 08:03:44','2020-11-05 00:35:45');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('tempus.non@fermentumvel.ca','OKY10TYT4DF','2020-07-17 06:06:03','2022-02-24 09:36:01','2021-03-10 10:04:55');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('neque.Nullam@antedictum.net','IUD47ZAO7GT','2021-01-10 15:36:40','2020-07-15 12:39:11','2022-02-03 21:40:55');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('parturient@Maurisvel.ca','MDR53ERI0OT','2021-07-23 12:41:36','2020-05-23 19:10:31','2020-08-25 14:35:39');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('vel@diamatpretium.co.uk','OTU62ONY7FW','2021-04-15 13:37:18','2021-07-06 15:05:20','2020-06-16 07:34:53');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('non@facilisis.edu','ZHC92FDK5HT','2021-04-09 15:00:23','2022-03-18 01:28:09','2020-07-03 13:31:13');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('morbi.tristique.senectus@cursuspurusNullam.co.uk','NSF35UQV0UH','2021-09-02 00:25:03','2020-10-02 08:34:21','2021-10-05 01:43:29');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('tempor@Inat.ca','CNS67RYJ2FM','2020-12-02 10:42:53','2020-05-07 14:34:45','2021-02-02 16:03:27');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('enim.condimentum@semsemper.com','YLR02CWV9ED','2021-07-16 08:40:44','2021-01-30 17:13:00','2021-09-15 17:18:44');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('blandit.Nam.nulla@nisiMauris.org','WQD46EEN3VH','2020-11-20 00:31:32','2021-09-02 12:43:19','2022-01-29 15:11:42');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('mus@arcuVivamus.ca','WUV61RJE1ET','2021-05-25 20:10:58','2021-08-24 02:09:31','2021-02-26 19:38:11');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('Nulla@nibhQuisquenonummy.edu','UEY18OLY3QB','2020-08-24 18:01:17','2021-01-18 05:27:19','2021-03-15 06:18:40');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('scelerisque@lorem.org','RDX54TRU6ZF','2020-09-19 23:21:11','2021-07-26 16:15:23','2020-06-16 15:20:44');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('dictum@egetmassaSuspendisse.net','SJX13AOC0DU','2021-03-29 03:10:35','2020-09-02 18:58:34','2020-11-29 20:57:02');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('nec.mollis.vitae@mollis.net','VGW37JKA8SB','2022-02-17 10:11:25','2020-09-04 23:07:24','2020-11-07 07:56:06');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('ultricies@nasceturridiculus.co.uk','BFN74JNY4ZE','2020-06-06 16:07:56','2021-10-07 02:12:51','2021-12-13 21:59:11');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('odio.Aliquam.vulputate@Morbi.ca','HAI97OKD3SQ','2021-11-30 23:51:32','2021-10-08 10:42:05','2021-04-02 20:52:04');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('Nulla.semper@conubianostraper.com','FCD46RRZ0YT','2020-04-03 20:24:09','2022-01-02 10:09:05','2021-10-04 18:26:33');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('amet@ridiculusmusProin.ca','XMX02UIH4RB','2021-10-24 23:59:29','2020-06-24 04:15:14','2020-04-26 12:03:43');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('Integer@lectus.co.uk','NQL05MAL1AK','2020-07-28 12:23:20','2020-10-14 07:45:34','2020-11-21 06:57:26');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('Cras@lectus.com','ZCP40TTO5HU','2021-04-16 21:24:40','2021-11-19 18:35:44','2022-02-26 04:23:38');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('parturient.montes@accumsaninterdumlibero.net','SMV25SJH3WX','2020-06-24 19:58:57','2020-06-25 12:09:19','2020-07-27 07:59:27');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('enim.Sed@Aliquam.net','AJH02GLD6OG','2021-03-08 15:24:51','2021-04-15 01:34:45','2020-10-04 00:33:20');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('justo@vulputate.ca','ILS57RNA9TX','2021-09-14 14:24:03','2021-02-03 09:25:25','2021-11-04 04:02:25');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('felis.ullamcorper.viverra@Donec.edu','EMF77KSI9EC','2020-04-20 11:59:42','2022-01-19 13:48:18','2021-09-15 05:22:08');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('nunc.est.mollis@tinciduntorci.org','KFG37XPV1ZZ','2021-08-24 21:17:47','2021-05-09 04:24:26','2021-11-04 09:32:29');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('auctor@fermentum.com','PLF03QIV7JA','2021-07-17 10:43:00','2020-08-12 16:34:58','2021-05-09 14:40:26');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('adipiscing.enim.mi@justositamet.edu','TFW13DEN3NY','2020-11-19 15:49:59','2021-10-18 07:13:33','2020-05-16 23:21:57');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('mauris.ipsum.porta@magnamalesuadavel.net','WRO55OXZ0NA','2021-12-21 11:21:07','2020-05-12 03:27:17','2020-10-26 00:51:10');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('eget.ipsum.Donec@et.com','MWG24KPV6AO','2021-04-01 18:36:45','2021-03-02 02:12:47','2020-07-16 05:44:07');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('ultrices.mauris.ipsum@nullaInteger.co.uk','UWE93YIC0WG','2022-03-21 20:45:01','2020-07-10 06:13:09','2021-04-03 07:26:51');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('Nulla.tempor@duiCumsociis.org','FDZ77OAD8XT','2021-04-03 16:47:41','2021-02-17 08:06:05','2022-01-18 20:46:32');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('turpis.nec@Morbi.org','SDA80ISU1SM','2022-02-01 00:50:11','2020-05-20 02:33:31','2021-09-30 17:12:52');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('enim.condimentum.eget@velitPellentesque.ca','BOZ14LDJ7ZP','2020-07-05 08:05:58','2021-07-07 18:04:12','2021-10-23 15:02:08');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('mi.eleifend@Nunc.co.uk','NWM88DHS8MI','2020-12-30 20:27:56','2020-09-09 17:34:46','2020-07-15 11:43:56');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('et@vitaealiquet.edu','OMF82GAS9BE','2020-08-14 16:02:12','2021-01-04 00:13:37','2020-08-01 18:23:56');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('dictum@semper.edu','TSC59CCJ4EE','2021-06-19 22:29:18','2020-04-29 02:23:00','2020-12-21 17:41:26');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('et.libero.Proin@semegestasblandit.edu','EFE13JJQ0SD','2020-05-08 21:06:11','2020-12-06 06:28:52','2021-10-11 10:31:25');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('ipsum.dolor@penatibus.ca','JVH19GVV2KM','2020-08-04 10:12:50','2021-01-11 11:56:27','2021-02-26 14:45:20');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('Proin.nisl.sem@Donec.com','WBR96XTT6OC','2020-10-01 22:30:50','2020-04-06 06:29:25','2021-12-07 07:26:32');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('risus.Donec.egestas@mauris.com','KHH87CKT3JR','2020-10-17 18:14:37','2021-03-02 00:18:52','2020-12-04 23:32:50');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('sit@molestiepharetra.edu','KLW68GVB2MI','2021-12-30 05:57:49','2021-05-21 03:50:00','2021-05-30 14:44:31');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('tortor@sedpede.org','BGI63XUL8JR','2020-03-25 03:54:37','2021-04-03 02:59:16','2020-04-17 01:56:52');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('et.magnis.dis@Fuscemilorem.net','SCI41AEM2PQ','2021-07-29 07:08:51','2021-05-19 02:57:41','2020-07-28 10:52:03');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('eleifend@Nunclaoreet.edu','PZC20IHR9NN','2020-10-29 20:17:27','2021-02-24 12:27:55','2021-05-01 21:12:17');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('eu@metus.ca','YEF32WSW8YR','2022-01-16 16:30:10','2020-12-08 12:13:20','2021-11-21 08:54:50');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('lobortis@fermentum.edu','FHI69NGW0WC','2022-03-04 04:11:44','2021-05-03 18:47:17','2021-07-02 00:07:33');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('volutpat@duinec.net','BWL80OQE7CJ','2020-12-14 09:40:18','2022-03-16 11:35:39','2021-08-07 01:13:37');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('js@world.edu','IXI69ZGW0AC','2022-03-04 04:11:44','2021-05-03 18:47:17','2021-07-02 00:07:33');
INSERT INTO "users" (email,password,created_on,updated_on,last_logged_in) VALUES ('ama@zir.net','TSL156KZ7cx','2020-12-14 09:40:18','2022-03-16 11:35:39','2021-08-07 01:13:37');

-- customers data
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (39,'002-606-2002','Kylan','Johnston');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (30,'054-259-7092','Adria','Walsh');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (36,'069-363-9068','Callum','Browning');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (38,'062-945-9755','Hashim','Stein');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (32,'039-326-9994','Cadman','Armstrong');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (8,'018-375-6767','Micky','Kelley');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (36,'052-708-7548','Xanthus','Conway');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (5,'018-817-6258','Isaac','Barry');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (29,'022-621-9152','Solomon','Dejesus');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (11,'002-877-3504','Hedley','Schroeder');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (6,'056-711-9331','Graham','Le');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (48,'010-055-7631','Raymond','Mayer');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (13,'096-945-2701','Jamalia','Elliott');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (28,'073-871-3086','Dakota','West');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (50,'087-211-6924','Kelsey','Winters');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (21,'075-359-3562','Francis','Foreman');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (22,'021-349-5662','T','Doe');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (7,'046-315-3481','Justin','Dudley');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (2,'027-883-6474','Beau','Washington');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (24,'074-512-7060','Justine','Thompson');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (23,'027-840-0207','Rama','Brock');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (41,'097-227-5700','Damian','Stanley');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (47,'029-507-3849','Cassady','Sawyer');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (37,'083-281-5493','Lenore','Baker');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (14,'084-912-0611','Keelie','Mcguire');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (45,'038-432-8289','Abra','Solis');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (49,'001-222-6799','Taylor','Hoffman');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (4,'058-299-5306','Jordan','Mcintyre');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (31,'006-875-3417','Devin','Buckley');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (9,'099-520-1448','Gage','Barrera');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (33,'085-856-6848','Camille','Hodge');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (17,'094-085-6109','Ifeoma','Bender');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (43,'029-467-3244','Denton','Sims');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (46,'003-610-4693','Melanie','Gilbert');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (40,'070-508-5032','Kirk','Cobb');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (35,'001-965-6623','Leilani','Cline');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (25,'094-880-5179','Cruz','Logan');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (16,'079-252-0364','Winifred','Wade');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (20,'063-072-8786','Lucas','Grimes');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (42,'031-648-6234','Adena','Lynch');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (3,'013-413-4514','Brett','Manning');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (27,'081-622-6965','Maggie','Young');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (12,'011-566-8089','Justine','Walter');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (18,'071-320-4792','Dale','Curtis');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (10,'074-154-4140','Shellie','Gallegos');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (26,'036-282-8201','Kermit','Burnett');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (44,'073-962-2405','Maia','Mckay');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (1,'080-740-9612','Ayanna','Preston');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (15,'031-740-7564','Urielle','Stokes');
INSERT INTO "customers" (user_id,phone_number,firstname,lastname) VALUES (19,'091-745-7509','Shafira','Bray');

-- addresses data
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (17,'Siheung','Hanam','Gye','01888','Ap #159-8651 Class Ave','2021-08-20 00:29:27','2021-09-07 18:57:48');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (44,'Uiwang','Anseong','Gye','15235','690-5646 Eget Street','2020-10-01 04:28:52','2021-01-28 15:10:54');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (24,'Sangju','Gimcheon','North Gyeongsang','05845','P.O. Box 662, 8225 Urna. St.','2020-11-01 19:51:46','2022-02-19 08:52:31');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (43,'Geoje','Cheonan','Gye','16805','Ap #256-2665 Arcu. St.','2020-11-06 09:56:23','2020-11-01 06:11:43');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (11,'Goyang','Incheon','Gyeonggi','22596','Ap #693-2637 Convallis Street','2020-08-21 16:11:53','2020-10-23 21:30:45');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (27,'Changwon','Ulsan','South Gyeongsang','18829','2558 Mauris Street','2020-11-01 00:44:44','2020-05-26 16:20:03');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (33,'Gongju','Nonsan','Chu','08685','1314 Vulputate Ave','2021-11-27 13:52:10','2021-08-15 14:20:15');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (35,'Jeonju','Gunsan','North Jeolla','09099','Ap #749-1397 Tortor. Street','2021-08-27 06:56:02','2021-04-23 23:46:52');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (44,'Tongyeong','Seosan','South Gyeongsang','29465','Ap #839-2209 Dolor, Street','2021-12-14 14:28:05','2022-02-03 23:16:11');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (45,'Gimcheon','Yeongju','Gye','21889','682-4331 Sem Road','2021-05-17 03:44:05','2022-02-05 17:16:34');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (6,'Chungju','Chungju','North Chungcheong','08140','7657 Non Street','2020-05-04 05:49:37','2021-04-14 12:15:53');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (44,'Chuncheon','Wonju','Gan','14630','P.O. Box 648, 2649 Lorem Road','2020-10-14 17:22:45','2020-05-09 16:17:59');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (40,'Gongju','Gongju','South Chungcheong','11369','P.O. Box 779, 5838 Consequat St.','2020-06-28 07:41:08','2021-03-15 04:40:50');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (38,'Gunsan','Jeonju','North Jeolla','05049','8150 Euismod Street','2020-04-13 03:24:28','2021-05-02 11:29:23');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (27,'Anseong','Seoul','Gyeonggi','29055','607-3239 Et, Avenue','2021-01-30 13:12:12','2021-06-27 09:42:24');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (25,'Yeoju','Uijeongbu','Gyeonggi','28661','9930 Vivamus Street','2020-07-16 08:11:10','2020-09-24 22:58:50');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (32,'Yangsan','Tongyeong','Gye','26388','314-240 Nunc Rd.','2022-02-27 22:16:45','2021-11-01 04:26:01');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (10,'Icheon','Gwangju','Gye','08401','P.O. Box 421, 2280 Sociis Street','2021-06-23 15:02:49','2021-08-04 12:43:01');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (45,'Andong','Gimcheon','Gye','28766','P.O. Box 763, 7950 Non Rd.','2021-09-30 11:59:02','2020-10-25 14:52:50');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (46,'Chungju','Chungju','Chu','18132','139-9958 Enim Rd.','2020-06-14 15:34:50','2020-12-30 21:54:25');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (32,'Siheung','Incheon','Gyeonggi','04587','Ap #653-434 Cum Av.','2020-11-06 20:37:28','2021-08-05 07:33:51');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (1,'Sacheon','Sacheon','Gye','17665','P.O. Box 889, 1273 Faucibus Rd.','2021-07-08 03:26:53','2021-12-09 02:58:43');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (12,'Gwangju','Paju','Gye','00290','4941 Magna. Street','2021-10-31 16:33:27','2020-05-31 11:09:01');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (9,'Mokpo','Gwangyang','South Jeolla','15937','538-1977 Libero. Street','2020-12-01 14:16:53','2021-07-18 04:16:09');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (46,'Yongin','Gimpo','Gye','16863','Ap #464-7756 Id Av.','2022-02-06 08:01:35','2021-05-11 02:58:55');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (30,'Namyangju','Hanam','Gyeonggi','09126','1577 Morbi Avenue','2021-02-03 09:14:27','2021-07-15 11:02:48');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (29,'Yongin','Seoul','Gyeonggi','08548','Ap #146-1404 Faucibus Avenue','2021-05-14 00:20:19','2020-05-11 20:57:24');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (47,'Pocheon','Seongnam','Gye','25111','Ap #391-2889 Lacus St.','2020-09-22 22:12:30','2021-07-01 05:30:38');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (49,'Seongnam','Osan','Gye','04739','P.O. Box 878, 1774 Ac Avenue','2021-11-02 10:20:14','2020-11-12 19:23:55');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (28,'Gumi','Gyeongju','North Gyeongsang','18326','4966 Magna. Rd.','2021-08-09 02:18:42','2021-05-23 13:34:51');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (2,'Iksan','Jeonju','North Jeolla','22163','Ap #442-7648 Natoque Rd.','2020-12-16 13:33:03','2021-09-21 11:30:31');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (12,'Gangneung','Chuncheon','Gangwon','27339','P.O. Box 444, 4300 Mauris Avenue','2020-08-10 10:12:39','2020-11-29 08:28:55');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (46,'Chungju','Jecheon','Chu','04420','P.O. Box 470, 3068 Non, Rd.','2021-08-18 12:29:55','2022-02-26 08:19:48');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (24,'Seogwipo','Jeju','Jej','19177','792-1077 Parturient Avenue','2021-07-01 05:34:01','2020-08-18 02:04:18');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (37,'Uijeongbu','Uijeongbu','Gyeonggi','07103','P.O. Box 336, 8634 Montes, Avenue','2020-05-26 19:58:44','2021-10-02 11:46:26');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (4,'Hanam','Seongnam','Gye','25636','5801 Velit Road','2021-06-27 23:11:22','2020-04-24 12:25:21');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (3,'Jecheon','Chungju','North Chungcheong','15713','Ap #756-924 Diam Road','2021-05-21 07:48:49','2020-10-17 03:10:51');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (23,'Geoje','Busan','Gye','22104','891-3153 Magna Road','2021-03-09 13:15:35','2020-06-25 23:26:33');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (20,'Seogwipo','Seogwipo','Jeju','04989','Ap #734-6610 Curabitur Road','2021-03-02 18:47:40','2021-12-12 01:30:51');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (48,'Gwangju','Anseong','Gyeonggi','08426','P.O. Box 844, 2481 Eu, Avenue','2021-03-27 21:59:43','2021-11-13 01:24:45');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (38,'Anseong','Siheung','Gyeonggi','03133','P.O. Box 293, 8967 Et Street','2021-01-18 20:31:39','2022-02-13 12:58:01');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (24,'Seogwipo','Jeju','Jeju','04909','687 Sed Rd.','2020-07-05 00:36:02','2021-05-20 20:21:22');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (46,'Yongin','Guri','Gyeonggi','07995','Ap #554-3478 Consectetuer Ave','2021-07-10 16:56:23','2021-06-11 23:16:26');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (44,'Gwangyang','Yeosu','South Jeolla','04575','9818 Pharetra. Road','2021-09-13 13:11:57','2020-12-02 06:15:06');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (11,'Gwangyang','Suncheon','South Jeolla','14042','Ap #260-6005 Erat. Ave','2021-02-06 03:42:43','2021-08-29 03:18:54');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (30,'Gwangju','Seoul','Gye','16350','P.O. Box 224, 3015 Eu Avenue','2020-05-29 01:48:48','2020-12-15 02:49:16');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (45,'Asan','Gongju','Chu','27021','2018 Cursus St.','2021-12-14 08:32:31','2020-12-27 13:41:48');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (21,'Pocheon','Seongnam','Gyeonggi','24222','P.O. Box 130, 8603 Aliquam, St.','2020-07-04 20:33:40','2022-01-04 15:48:37');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (42,'Seosan','Cheonan','South Gyeongsang','02558','Ap #140-5902 Primis Street','2021-01-15 16:10:41','2020-06-06 20:06:35');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (44,'Gangneung','Chuncheon','Gan','23959','Ap #866-2225 Massa Avenue','2020-05-22 22:57:03','2021-10-09 23:46:51');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (21,'Jecheon','Chungju','Chu','01721','Ap #597-5461 Vel, Street','2021-09-18 20:46:14','2020-07-25 02:23:51');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (9,'Gwangmyeong','Icheon','Gyeonggi','00140','759-1931 Mauris Rd.','2021-12-17 23:55:18','2021-02-09 13:20:17');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (4,'Jeongeup','Gunsan','Jeo','05860','Ap #758-683 Quis, Avenue','2021-09-26 04:37:15','2020-09-02 04:30:03');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (28,'Jeonju','Iksan','North Jeolla','00379','373-4399 Augue Av.','2020-05-27 17:52:58','2020-08-16 21:05:14');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (13,'Busan','Miryang','South Gyeongsang','28908','Ap #863-3366 Cum Ave','2021-12-17 09:11:24','2020-08-04 16:14:41');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (5,'Guri','Suwon','Gyeonggi','09549','3142 Eros Avenue','2020-04-05 18:02:02','2020-06-13 03:50:13');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (36,'Jecheon','Jecheon','Chu','25566','Ap #529-6051 Ipsum Street','2021-07-05 22:47:48','2020-10-21 18:40:49');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (1,'Yongin','Gwangju','Gye','27186','P.O. Box 177, 6254 Eu Av.','2020-08-12 04:37:30','2021-11-03 17:34:13');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (34,'Sangju','Andong','North Gyeongsang','08118','P.O. Box 603, 751 Suscipit St.','2021-03-24 10:15:41','2021-10-30 07:11:34');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (48,'Iksan','Jeonju','Jeo','28490','P.O. Box 866, 6047 Cras Av.','2021-12-06 22:24:32','2022-03-22 10:00:00');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (4,'Hanam','Paju','Gye','17239','Ap #413-7970 Imperdiet Avenue','2021-01-16 12:27:37','2020-09-20 04:32:40');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (50,'Gyeongsan','Sangju','Gye','04918','Ap #994-3361 Magna Av.','2020-04-11 00:18:16','2020-04-21 04:48:20');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (45,'Uijeongbu','Gwangju','Gyeonggi','22090','9856 Auctor St.','2022-01-12 15:50:16','2020-12-09 08:14:40');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (21,'Gongju','Nonsan','South Chungcheong','25331','5753 Nascetur St.','2020-10-26 23:06:44','2020-10-08 15:45:49');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (5,'Gwangmyeong','Incheon','Gye','25721','901 Sit St.','2021-03-18 19:03:15','2021-01-17 00:12:48');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (11,'Jeongeup','Jeonju','Jeo','20947','8778 Porttitor Street','2021-02-25 10:59:49','2021-06-08 11:55:47');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (11,'Namyangju','Seoul','Gyeonggi','24704','Ap #513-538 Sociis St.','2020-12-10 08:13:23','2020-12-02 14:18:31');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (47,'Tongyeong','Busan','Gye','18532','Ap #336-6780 Neque. Rd.','2020-04-03 00:34:20','2020-03-27 04:48:18');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (37,'Nonsan','Boryeong','South Chungcheong','06286','293-1432 Lorem, Avenue','2021-07-20 20:49:31','2020-05-12 06:46:14');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (16,'Yeosu','Suncheon','Jeo','03317','P.O. Box 905, 7382 Egestas Avenue','2022-01-12 08:26:13','2020-09-27 13:57:55');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (49,'Anseong','Osan','Gyeonggi','14791','Ap #119-9988 Aliquet. Avenue','2021-04-06 03:33:43','2020-04-13 11:38:02');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (20,'Jecheon','Chungju','North Chungcheong','05999','Ap #331-126 Iaculis Road','2021-03-22 10:11:01','2021-04-07 07:51:30');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (41,'Jeonju','Jeongeup','North Jeolla','28689','758-4555 Elit. Avenue','2020-05-09 18:22:03','2021-05-07 05:12:27');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (28,'Gunsan','Jeonju','North Jeolla','13659','P.O. Box 279, 7722 Ornare Rd.','2021-01-13 03:10:44','2021-01-07 03:07:06');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (29,'Gimhae','Tongyeong','Gye','10383','524-9878 Sed Rd.','2020-05-31 19:48:54','2020-08-21 21:26:27');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (34,'Jeongeup','Jeongeup','Jeo','01077','P.O. Box 679, 1538 Feugiat Av.','2022-02-19 19:35:58','2021-03-06 15:36:31');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (8,'Namyangju','Anseong','Gye','15656','Ap #247-911 Adipiscing Avenue','2020-10-11 05:18:28','2020-08-25 03:03:59');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (24,'Gwangju','Anseong','Gye','28063','Ap #183-6969 Integer Rd.','2020-11-30 21:06:10','2020-07-03 13:40:47');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (2,'Uijeongbu','Anseong','Gyeonggi','10778','334-1575 Nascetur Avenue','2021-09-26 15:17:51','2020-12-16 21:31:57');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (42,'Wonju','Wonju','Gan','18076','126-6024 Mauris Ave','2022-02-09 14:53:42','2021-11-23 21:20:22');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (9,'Pyeongtaek','Yangju','Gye','04586','9287 Imperdiet Road','2021-12-30 02:41:27','2021-02-08 09:48:01');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (49,'Jeju','Seogwipo','Jeju','14559','Ap #321-6410 Diam Street','2021-08-25 04:21:33','2021-05-04 10:10:31');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (32,'Gunpo','Seoul','Gye','19900','703-3471 Interdum. Road','2021-04-17 05:14:37','2020-07-06 19:47:09');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (48,'Changwon','Seosan','Gye','09593','4020 Quis Rd.','2022-01-03 21:31:55','2021-11-16 23:50:53');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (2,'Daegu','Yangsan','South Gyeongsang','28873','847-3610 Amet Road','2021-12-24 15:13:20','2020-07-29 22:18:02');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (24,'Mokpo','Mokpo','South Jeolla','23213','P.O. Box 721, 5436 Scelerisque St.','2021-08-31 19:42:47','2020-08-17 08:33:36');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (43,'Jinju','Jinju','South Gyeongsang','22845','P.O. Box 867, 8232 Ligula. St.','2020-12-23 06:34:15','2022-02-17 23:05:20');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (7,'Jeonju','Gunsan','North Jeolla','03913','Ap #489-5094 Sit Ave','2022-01-11 05:41:43','2021-08-02 10:22:20');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (21,'Yangsan','Cheonan','Gye','18794','4654 Lectus. Avenue','2021-06-25 01:42:40','2022-02-18 15:22:16');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (3,'Gimpo','Gwangju','Gyeonggi','06599','P.O. Box 588, 2285 Quam Av.','2021-12-29 00:19:18','2020-07-30 11:36:57');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (13,'Miryang','Jinju','Gye','15375','7078 Eget, Ave','2022-02-20 12:55:06','2022-01-24 00:33:03');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (17,'Gunsan','Jeonju','North Jeolla','09826','P.O. Box 644, 8083 Neque Street','2020-10-30 01:49:45','2021-04-03 07:58:57');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (26,'Suncheon','Yeosu','Jeo','08990','P.O. Box 792, 8963 Nec Ave','2022-02-22 04:02:28','2020-10-10 16:12:03');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (47,'Andong','Pohang','North Gyeongsang','04445','P.O. Box 234, 7223 Donec Av.','2021-05-03 11:28:26','2020-09-19 11:49:42');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (6,'Andong','Gimcheon','Gye','17405','P.O. Box 261, 2252 Purus. Rd.','2021-12-28 01:31:16','2020-08-25 20:47:59');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (5,'Uiwang','Suwon','Gyeonggi','12826','647-8281 Elementum, Av.','2021-06-03 21:07:12','2020-07-18 03:34:57');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (1,'Gongju','Asan','Chu','25644','Ap #785-1103 In Av.','2021-03-11 09:34:09','2021-06-16 18:16:42');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (26,'Mokpo','Mokpo','South Jeolla','00918','Ap #323-4725 Ac Street','2022-02-18 09:48:15','2021-09-06 07:15:44');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (36,'Anyang','Anyang','Gye','23237','8215 Sed, Rd.','2021-10-22 17:20:51','2020-12-26 06:12:22');
INSERT INTO "addresses" (customer_id,district,subdistrict,province,postal,street,created_on,updated_on) VALUES (48,'Miryang','Tongyeong','Gye','14411','Ap #670-626 Libero. Ave','2021-06-29 06:49:33','2021-06-08 10:59:47');

-- orders data
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (1,'pending','2021-02-24 05:18:09','2020-05-28 03:23:56');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (42,'pending','2021-08-16 22:15:01','2020-10-04 20:51:51');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (46,'pending','2021-01-19 13:29:07','2022-01-10 09:34:27');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (34,'completed','2020-05-04 06:13:20','2020-12-09 15:11:50');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (47,'paid','2020-09-01 18:07:50','2020-09-17 09:28:02');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (22,'paid','2021-06-16 23:14:43','2020-06-14 03:29:41');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (37,'pending','2021-11-10 05:26:27','2021-10-31 11:50:50');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (43,'pending','2021-05-14 16:25:06','2021-11-12 15:46:33');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (44,'paid','2021-07-17 18:28:50','2021-10-03 08:31:28');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (29,'paid','2021-08-29 05:14:23','2021-01-02 00:48:49');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (22,'pending','2021-06-16 00:30:30','2020-07-15 23:32:12');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (35,'pending','2021-06-19 01:08:39','2021-08-26 10:09:34');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (8,'paid','2021-11-14 13:47:10','2020-11-20 14:08:20');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (29,'paid','2021-03-25 10:03:46','2021-04-29 22:48:30');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (45,'completed','2021-04-13 16:08:48','2021-01-30 17:56:01');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (50,'paid','2021-06-23 09:57:58','2021-07-14 19:19:43');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (4,'pending','2020-06-22 17:53:23','2021-02-27 21:25:40');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (26,'completed','2021-05-23 15:24:35','2022-03-07 06:32:34');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (47,'paid','2021-12-04 03:33:01','2021-10-23 21:15:14');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (3,'paid','2020-03-29 14:58:58','2021-04-12 01:05:32');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (31,'completed','2021-03-27 08:31:16','2020-05-04 02:29:01');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (22,'pending','2020-05-07 07:02:49','2021-10-18 09:40:02');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (36,'completed','2022-01-27 06:54:13','2021-03-07 19:18:49');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (47,'pending','2022-01-26 15:00:20','2022-01-19 15:55:52');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (39,'completed','2020-08-03 08:22:52','2022-01-26 08:36:51');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (10,'completed','2020-12-26 09:30:18','2021-02-26 19:39:29');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (13,'pending','2021-10-16 12:43:34','2021-07-19 05:55:49');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (5,'paid','2021-08-01 10:14:13','2022-01-16 21:16:13');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (39,'paid','2021-08-15 00:48:41','2021-07-18 12:29:46');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (8,'pending','2021-04-17 21:20:48','2020-08-05 19:45:09');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (32,'pending','2021-03-27 23:48:00','2020-06-15 02:04:05');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (35,'completed','2021-06-28 03:51:07','2021-04-26 02:08:12');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (31,'paid','2021-03-07 03:26:10','2022-01-11 06:11:57');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (37,'pending','2022-03-07 23:36:28','2020-07-03 23:12:02');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (27,'paid','2020-11-20 12:44:25','2021-04-24 06:31:43');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (30,'paid','2021-11-19 16:22:28','2020-08-07 18:25:28');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (16,'completed','2021-04-05 16:34:45','2021-12-12 23:03:33');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (31,'paid','2020-05-27 02:59:57','2021-04-30 08:39:27');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (32,'pending','2021-05-12 10:08:58','2022-03-16 02:56:29');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (11,'completed','2020-11-12 11:14:37','2021-08-23 04:15:12');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (23,'completed','2020-04-28 00:10:20','2020-04-02 16:40:28');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (38,'paid','2020-10-28 18:35:17','2021-09-18 22:58:39');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (14,'paid','2021-08-04 04:32:00','2022-01-18 13:50:46');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (19,'completed','2020-12-03 01:15:20','2021-03-18 22:42:35');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (39,'paid','2021-01-28 11:42:35','2022-02-01 18:28:27');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (24,'completed','2020-05-12 07:48:18','2021-09-29 05:13:50');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (20,'completed','2021-02-16 22:26:26','2021-06-25 15:58:49');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (30,'completed','2020-05-22 21:47:09','2020-12-29 09:20:34');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (3,'completed','2020-04-30 04:14:32','2020-09-14 01:48:33');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (26,'paid','2020-07-03 04:00:06','2021-07-05 15:22:54');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (46,'paid','2021-09-06 18:39:27','2021-04-29 16:22:39');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (50,'completed','2020-10-23 22:55:30','2022-02-21 17:38:03');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (40,'pending','2020-04-20 15:29:25','2021-01-25 13:13:01');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (49,'pending','2021-01-19 18:10:08','2020-10-04 10:50:09');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (11,'paid','2020-11-10 16:09:25','2020-09-08 20:08:09');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (26,'pending','2022-02-16 04:43:22','2020-10-15 02:21:46');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (18,'completed','2020-08-24 20:51:14','2021-04-13 08:59:59');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (35,'completed','2021-02-10 16:08:23','2021-12-26 17:16:55');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (5,'completed','2021-11-09 16:12:32','2020-11-10 06:46:29');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (36,'completed','2020-05-01 15:11:29','2021-04-19 11:42:58');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (48,'paid','2020-04-02 14:29:23','2022-01-05 09:10:38');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (23,'paid','2021-07-27 20:08:47','2020-04-14 22:18:16');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (8,'pending','2021-09-01 06:50:45','2020-12-07 04:31:56');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (42,'paid','2020-09-01 13:42:36','2021-10-23 12:52:37');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (9,'paid','2020-08-27 08:45:52','2021-02-16 02:12:07');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (23,'completed','2020-11-14 07:00:35','2022-01-10 18:00:59');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (34,'pending','2020-07-09 03:32:48','2021-07-27 12:59:34');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (38,'paid','2020-04-03 01:14:51','2020-03-31 18:31:51');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (13,'completed','2021-01-24 17:33:20','2021-03-27 23:42:17');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (7,'paid','2020-10-07 14:36:52','2021-07-24 08:58:41');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (9,'paid','2021-05-28 17:54:54','2020-12-20 04:12:23');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (32,'paid','2020-10-13 22:07:54','2021-10-04 01:23:16');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (7,'paid','2020-07-01 21:59:22','2022-01-21 18:08:26');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (12,'pending','2020-04-01 10:03:57','2020-04-20 22:12:55');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (11,'paid','2021-04-13 04:31:15','2020-10-19 04:08:57');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (35,'pending','2020-03-27 16:26:58','2021-01-06 20:34:33');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (29,'paid','2021-05-24 02:29:46','2020-06-03 22:28:07');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (4,'paid','2021-09-12 03:01:42','2021-03-06 02:43:19');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (7,'paid','2021-08-15 03:49:11','2021-05-23 10:29:44');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (11,'paid','2020-10-21 19:50:54','2022-03-15 03:58:24');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (6,'pending','2021-02-02 10:08:52','2021-03-15 10:05:18');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (32,'completed','2020-04-04 18:40:09','2022-02-21 22:45:34');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (41,'paid','2021-10-07 02:52:39','2020-05-20 15:08:24');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (28,'completed','2021-09-12 01:20:38','2021-11-28 11:41:22');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (35,'pending','2020-03-25 02:05:08','2021-04-07 00:43:44');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (43,'pending','2021-06-30 10:49:52','2020-12-09 20:20:37');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (35,'paid','2021-04-15 13:15:14','2022-03-17 12:20:46');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (38,'paid','2021-12-19 18:56:56','2020-06-18 22:31:34');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (12,'completed','2021-12-17 22:34:07','2020-06-13 06:54:00');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (46,'paid','2020-12-31 12:14:19','2022-02-21 18:21:56');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (19,'pending','2020-07-05 20:13:19','2020-10-08 02:19:33');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (9,'completed','2021-03-09 16:32:19','2021-04-11 15:40:41');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (41,'pending','2020-12-02 06:34:07','2021-09-17 22:55:47');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (29,'pending','2020-06-06 08:02:40','2020-11-30 17:31:27');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (23,'pending','2020-04-30 04:47:51','2021-08-05 09:23:18');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (11,'pending','2022-01-23 06:24:33','2021-03-06 05:21:59');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (13,'paid','2021-03-15 22:35:19','2021-03-15 08:18:53');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (39,'completed','2021-11-19 00:59:17','2021-12-24 09:10:27');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (47,'paid','2020-06-21 14:56:04','2021-12-06 01:33:42');
INSERT INTO "orders" (customer_id,status,created_on,updated_on) VALUES (48,'pending','2021-08-25 10:31:20','2021-06-20 12:51:53');


-- order_items data
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (86,10,2,'2021-09-10 09:58:30');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (36,13,5,'2020-05-14 02:49:18');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (54,84,3,'2020-09-02 13:18:05');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (47,88,5,'2020-10-23 07:26:31');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (94,16,7,'2021-02-12 05:35:35');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (19,74,3,'2022-01-23 19:56:48');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (85,58,6,'2021-09-03 19:47:28');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (85,36,2,'2021-11-03 13:44:05');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (78,23,2,'2021-12-22 07:42:23');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (39,94,2,'2022-03-06 18:08:44');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (5,16,6,'2022-01-10 18:05:19');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (28,84,3,'2020-07-07 08:22:23');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (68,99,9,'2021-09-05 16:18:20');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (65,32,3,'2021-09-19 01:34:38');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (97,63,2,'2021-01-04 22:58:27');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (16,10,2,'2021-06-21 06:00:48');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (71,72,8,'2021-11-11 19:32:55');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (6,24,10,'2021-08-24 03:45:05');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (61,49,8,'2021-01-08 10:56:12');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (68,100,7,'2021-12-27 04:44:23');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (86,74,2,'2020-09-23 03:47:54');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (33,42,6,'2021-10-31 15:51:59');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (72,92,9,'2021-07-27 22:00:14');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (4,77,6,'2021-03-27 09:27:49');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (40,47,7,'2021-12-01 02:07:15');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (13,81,7,'2022-01-06 03:25:10');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (86,41,8,'2021-07-16 17:36:38');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (32,80,4,'2020-10-01 23:56:36');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (5,81,5,'2021-05-01 20:41:38');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (38,34,8,'2020-05-10 18:44:09');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (77,20,2,'2021-06-04 03:09:53');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (7,70,2,'2020-04-13 13:01:31');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (82,8,6,'2021-09-07 03:16:31');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (83,7,1,'2020-07-01 18:54:40');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (4,60,6,'2020-04-10 00:24:53');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (89,24,8,'2021-08-09 12:18:26');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (42,27,4,'2021-11-26 10:38:45');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (61,54,3,'2020-06-20 22:39:17');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (73,86,10,'2022-02-02 21:16:59');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (53,93,1,'2021-05-13 17:07:46');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (49,79,8,'2020-12-25 04:06:12');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (56,89,5,'2020-12-02 14:14:58');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (58,22,8,'2020-05-14 01:50:14');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (46,49,9,'2021-08-07 03:22:08');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (61,46,2,'2021-02-23 09:37:17');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (97,58,6,'2020-05-02 02:15:57');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (77,100,6,'2021-09-09 07:58:50');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (51,74,4,'2020-07-06 01:36:08');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (90,19,2,'2021-02-07 07:06:09');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (75,12,5,'2021-04-11 11:35:59');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (57,47,8,'2020-08-06 23:06:52');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (61,18,10,'2020-09-25 18:20:37');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (85,92,8,'2020-08-03 02:53:40');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (98,43,9,'2020-04-02 13:04:47');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (63,98,1,'2021-07-08 04:29:34');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (64,79,6,'2020-07-09 20:30:43');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (47,95,8,'2020-05-29 16:30:58');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (36,58,4,'2021-11-12 13:39:04');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (14,2,10,'2021-09-05 18:44:17');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (96,52,7,'2021-11-05 06:21:14');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (35,36,7,'2020-10-27 04:04:30');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (64,4,3,'2020-07-03 16:20:42');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (24,14,1,'2020-05-24 06:50:39');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (56,5,9,'2021-09-05 08:16:09');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (73,82,3,'2021-04-22 07:51:06');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (61,21,2,'2021-01-13 01:42:49');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (89,94,3,'2021-01-20 22:20:17');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (24,79,2,'2021-07-01 21:38:21');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (90,17,10,'2021-02-26 07:43:39');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (47,84,1,'2020-12-23 15:32:18');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (24,96,3,'2020-06-22 13:26:39');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (35,35,7,'2020-09-25 01:24:42');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (88,50,5,'2020-04-22 18:32:24');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (40,82,5,'2021-08-24 14:51:39');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (70,28,6,'2022-03-24 05:25:02');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (5,94,10,'2021-09-10 03:52:15');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (38,43,9,'2021-11-22 18:18:05');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (3,72,7,'2021-08-13 19:06:25');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (6,14,2,'2020-12-03 02:14:27');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (61,19,10,'2021-07-08 05:32:28');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (74,35,2,'2021-10-20 02:21:04');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (66,50,1,'2020-12-22 08:14:40');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (20,49,2,'2021-01-29 03:50:00');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (40,96,7,'2021-09-15 01:53:35');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (48,10,5,'2021-12-21 09:01:51');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (93,9,10,'2021-04-03 03:35:28');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (78,16,10,'2021-04-25 17:14:40');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (48,49,4,'2021-04-19 13:17:33');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (50,79,10,'2021-08-26 15:11:42');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (12,3,2,'2021-04-04 14:25:01');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (4,52,10,'2021-08-07 16:57:07');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (35,67,6,'2020-10-26 10:31:04');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (23,26,8,'2021-08-11 22:06:57');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (38,33,2,'2021-09-23 06:51:54');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (17,53,8,'2021-08-28 11:34:32');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (87,88,5,'2021-06-04 14:03:08');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (5,53,10,'2021-07-18 13:48:51');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (88,38,10,'2021-07-16 10:40:34');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (69,26,2,'2020-09-06 03:21:22');
INSERT INTO "order_items" (order_id,product_id,quantity,created_on) VALUES (48,63,1,'2021-03-21 22:56:41');

-- categories data
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('toys','et tristique pellentesque, tellus sem mollis dui, in sodales elit','2021-06-07 00:19:55','2021-05-10 08:04:51');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('sports','auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis','2021-03-05 23:18:07','2020-06-06 10:02:43');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('pets','Quisque ornare tortor at risus. Nunc ac sem ut dolor','2020-12-02 03:45:26','2022-03-11 14:39:18');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('fashion','pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus','2020-12-21 20:02:33','2020-04-25 13:36:48');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('electronics','sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci','2020-08-06 14:38:57','2021-04-27 03:01:55');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('games','adipiscing, enim mi tempor lorem, eget mollis lectus pede et','2020-07-03 16:58:59','2020-10-29 22:08:36');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('watches','lacus, varius et, euismod et, commodo at, libero. Morbi accumsan','2021-05-18 04:20:09','2022-02-07 13:48:09');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('supplements','lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante','2020-04-13 18:51:40','2020-08-23 11:28:40');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('games','Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin','2021-08-22 00:13:44','2022-01-10 19:32:01');
INSERT INTO "categories" (name,description,created_on,updated_on) VALUES ('beauty','sit amet luctus vulputate, nisi sem semper erat, in consectetuer','2020-05-13 22:17:43','2020-07-18 13:12:17');


-- products data
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('feugiat',58773,4,7972,'2021-06-16 22:01:49','2021-09-03 22:11:19');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('adipiscing',51451,6,7761,'2021-11-14 04:57:01','2021-11-13 04:47:05');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('penatibus',88667,3,9575,'2021-02-28 06:25:29','2022-02-03 07:19:38');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('lectus',18594,6,3187,'2020-06-13 11:49:14','2020-10-27 13:49:40');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('sit',85786,7,8715,'2021-05-11 08:14:43','2022-01-01 10:45:06');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('neque.',46597,9,5137,'2020-12-09 04:42:39','2020-05-02 19:27:06');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Fusce',10164,10,3836,'2022-03-20 22:16:41','2021-12-13 15:29:03');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('commodo',38096,10,8629,'2020-07-27 22:50:20','2021-06-22 15:40:46');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dolor,',62868,9,5837,'2020-06-24 20:09:05','2020-04-24 06:08:55');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('lectus',94633,8,6990,'2020-12-05 20:10:59','2021-02-18 09:42:34');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('lobortis.',20548,6,3430,'2022-02-04 03:06:29','2021-08-22 14:52:32');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('neque.',76881,4,6676,'2021-04-08 11:41:48','2021-03-19 03:22:02');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('vulputate',7066,4,3289,'2021-03-11 19:10:03','2020-05-30 00:09:20');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('et',46112,4,9191,'2020-12-31 23:34:34','2021-11-26 05:09:25');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('faucibus.',98913,6,7550,'2021-03-01 02:46:22','2020-10-31 10:35:21');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('ipsum',36829,7,7876,'2021-06-23 09:15:49','2020-05-19 07:50:01');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('sed',25454,7,7221,'2020-09-07 12:00:35','2021-02-20 00:57:07');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Aenean',72169,9,9090,'2020-09-22 17:12:13','2021-10-19 06:47:48');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('interdum',69991,8,122,'2022-02-21 00:09:38','2021-06-19 04:33:37');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('aliquam',29457,10,7784,'2020-06-30 14:24:26','2021-11-30 08:35:20');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Morbi',54241,6,224,'2020-10-02 23:19:10','2022-02-19 00:00:49');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('magna.',15467,7,2623,'2020-05-18 05:33:39','2022-01-30 21:41:04');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('feugiat.',47734,8,1715,'2021-09-06 01:48:47','2021-09-12 23:01:53');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('viverra.',93598,7,6684,'2021-12-04 19:50:10','2022-03-23 23:31:45');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('ornare',90652,2,4445,'2021-04-13 22:00:34','2021-11-26 02:01:52');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('ultrices',24598,3,1772,'2020-11-03 16:08:00','2021-09-06 02:42:12');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('blandit',33713,4,3629,'2021-09-23 23:45:29','2021-01-28 08:46:29');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dolor',62640,5,1459,'2021-03-15 16:32:15','2020-05-01 13:45:24');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('ultricies',88065,6,4452,'2021-09-24 05:12:07','2021-04-20 18:50:50');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('eget,',58779,7,7155,'2020-08-18 19:25:47','2021-09-11 06:16:20');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('rhoncus.',79699,1,8618,'2020-05-13 03:22:22','2021-12-28 22:31:03');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('mauris',12004,2,6839,'2020-12-20 14:27:57','2021-04-19 17:59:52');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nascetur',26918,5,8898,'2020-11-24 22:58:51','2022-02-05 17:46:24');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nec,',9622,9,665,'2020-04-23 09:08:55','2022-03-23 17:35:10');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('elit',96809,10,9100,'2020-08-13 16:34:04','2020-12-23 13:41:30');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dictum',84342,10,7926,'2021-04-18 04:13:13','2021-02-11 17:20:20');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('erat,',9445,8,1746,'2021-08-18 21:09:55','2021-07-04 07:03:37');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Aliquam',63514,8,2040,'2020-06-09 11:10:33','2021-01-05 11:53:03');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('accumsan',27098,10,2082,'2021-12-02 14:32:26','2021-05-15 05:35:45');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('sociis',60830,10,6230,'2020-12-19 00:36:57','2021-01-19 09:38:33');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('mi,',8262,2,724,'2021-04-03 15:27:52','2021-02-05 21:28:22');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('adipiscing',36089,5,4770,'2021-03-08 03:11:27','2021-11-19 01:15:12');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('ullamcorper.',57453,1,9022,'2021-04-05 10:56:47','2021-08-30 12:23:02');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('luctus',71396,8,9158,'2021-01-14 04:50:11','2021-02-16 03:58:01');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('varius',63257,5,8087,'2020-07-09 06:43:22','2021-03-01 04:03:00');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('leo,',84051,9,3345,'2020-10-12 11:54:10','2022-01-01 23:40:28');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Nulla',25336,4,7699,'2020-05-06 05:52:35','2021-09-11 14:00:44');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('tincidunt',72261,2,4900,'2020-08-16 00:12:22','2022-01-19 17:24:06');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('vitae',13156,7,584,'2021-07-12 07:48:30','2020-11-22 13:21:44');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('velit',26331,4,5850,'2020-05-02 01:14:57','2020-09-02 09:02:20');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('feugiat',4526,5,3494,'2021-04-15 10:25:57','2021-09-08 02:42:32');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('neque',1366,9,8096,'2022-01-17 02:45:49','2020-05-07 05:32:33');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Mauris',37395,7,1019,'2021-10-27 08:26:49','2021-10-24 12:46:58');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('enim,',74231,5,5866,'2020-10-02 09:15:57','2021-12-17 00:25:54');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('fringilla,',96660,8,9235,'2021-06-22 02:42:44','2021-09-15 00:42:02');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('arcu',56817,3,187,'2021-05-28 15:55:20','2021-05-09 21:00:49');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('quis',77511,5,4671,'2021-07-17 17:27:57','2020-08-08 23:45:51');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dictum',7640,7,9850,'2021-04-25 13:56:47','2022-01-12 04:45:52');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Suspendisse',21039,4,8141,'2020-07-13 14:48:55','2021-08-10 14:18:35');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('non',16866,7,5905,'2022-02-27 22:43:09','2020-06-28 19:51:47');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dignissim',6453,9,1821,'2020-04-26 05:15:33','2022-01-10 07:11:22');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nec',58907,9,3103,'2021-07-16 16:33:06','2020-05-27 15:56:53');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('adipiscing',35235,10,6436,'2020-11-10 20:28:16','2021-10-18 16:07:39');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('eu',68237,6,8618,'2020-09-17 05:20:02','2020-07-27 00:56:29');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('hendrerit',81331,1,7794,'2021-10-28 09:43:16','2021-07-17 21:46:52');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('egestas',45199,3,4520,'2020-08-15 23:37:06','2021-06-16 22:09:05');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('massa',85050,1,6017,'2020-04-16 18:04:32','2020-07-24 08:18:06');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('et,',69149,6,8358,'2021-05-14 09:08:21','2021-03-30 18:48:53');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('mollis.',31384,1,9060,'2021-12-04 10:58:16','2020-10-14 05:31:19');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('eu,',34877,4,1115,'2020-11-15 20:48:11','2020-07-01 10:14:38');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nec',1088,6,7219,'2021-11-28 00:38:59','2021-08-14 16:00:11');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('in',66585,2,584,'2020-08-23 12:01:57','2020-07-15 10:20:49');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('arcu.',74932,4,2007,'2020-09-12 10:00:40','2021-06-23 02:27:39');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nibh.',82986,1,8184,'2021-11-05 06:35:16','2021-06-22 02:57:24');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('diam',94940,3,9801,'2020-12-24 13:36:06','2020-03-27 02:56:05');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Cras',84426,6,9530,'2020-08-14 06:49:40','2020-05-28 20:05:27');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('orci.',74515,1,4362,'2021-09-09 20:25:20','2021-10-26 17:05:22');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('convallis',66128,9,9301,'2021-10-16 14:39:10','2020-04-07 17:57:40');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nulla.',77980,1,9118,'2020-10-19 18:43:47','2020-11-26 09:24:21');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('blandit',99266,7,5299,'2020-12-05 12:07:10','2020-09-05 18:18:34');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('enim.',26921,10,9096,'2021-01-23 04:40:37','2021-04-06 02:35:55');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Nullam',86861,6,7056,'2021-04-27 10:58:01','2021-04-04 06:11:44');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dolor',84488,1,3520,'2021-12-11 02:45:36','2020-08-30 11:01:17');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nunc.',42398,10,6373,'2021-08-15 08:16:20','2020-10-21 10:41:34');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('eu',34243,5,1035,'2021-03-05 05:31:08','2022-01-27 12:46:56');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Phasellus',40881,3,4,'2021-05-29 00:21:02','2021-02-16 03:45:14');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('vestibulum,',91746,1,6898,'2020-08-11 04:08:03','2020-08-23 21:20:15');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Cras',48839,6,434,'2021-01-12 04:23:16','2020-10-31 10:17:08');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('tincidunt',97106,3,9955,'2021-09-27 14:17:28','2021-12-27 06:45:56');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('libero.',22718,9,992,'2020-04-27 22:20:14','2021-07-19 05:32:26');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('placerat,',5437,1,8417,'2020-05-24 22:14:41','2021-08-03 08:56:58');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('interdum.',75851,6,8627,'2021-12-10 10:43:21','2020-04-25 23:35:54');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('congue',58127,8,999,'2022-03-05 21:43:53','2020-08-05 02:01:50');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('dictum',11726,4,6632,'2020-12-16 12:40:50','2020-10-29 15:47:44');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('nec',91956,2,9914,'2020-08-20 19:02:38','2021-11-29 17:46:06');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('ac,',35940,1,3796,'2022-02-15 14:15:12','2021-09-19 18:47:22');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Nunc',19025,5,3037,'2021-11-11 18:35:10','2021-06-05 20:14:39');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('Donec',31558,7,7958,'2022-01-11 04:06:36','2021-05-20 01:03:30');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('odio',5564,10,3887,'2021-08-02 21:18:51','2020-09-01 21:09:01');
INSERT INTO "products" (name,price,category_id,stock_number,created_on,updated_on) VALUES ('magna.',83866,1,2064,'2022-02-26 03:30:33','2021-10-05 20:42:31');
