DROP TABLE IF EXISTS users, comments, posts, user_profile, products, products_categories, categories, orders, order_items, address, carts, carts_products CASCADE;

create table users (
  user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	username VARCHAR(50),
	password VARCHAR(50),
	role VARCHAR(8),
  created_at TIMESTAMPTZ NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL,
  last_logged_in TIMESTAMPTZ NOT NULL
);

insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('ggrishmanov0', 'YonRZALl', 'customer', '2021-11-14T07:44:22Z', '2021-07-17T09:28:46Z', '2021-06-28T14:22:33Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('lfadian1', 'IPOHKcoJQTZ7', 'customer', '2021-11-12T12:42:48Z', '2022-04-08T07:36:49Z', '2021-12-12T05:52:39Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('mjaegar2', 'l6qNLn', 'customer', '2021-08-22T17:37:21Z', '2021-09-23T07:50:25Z', '2021-07-24T04:00:58Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('shrinchenko3', 'ICJA7GsfVZ', 'customer', '2021-11-23T08:50:16Z', '2021-04-23T03:20:04Z', '2021-10-27T14:39:56Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('pbrundle4', 'DDQFSppI5dq4', 'customer', '2022-02-03T23:49:20Z', '2021-12-18T02:41:16Z', '2021-06-18T00:14:24Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('dlingwood5', 'iS2C1CI4oA', 'customer', '2022-04-14T05:37:31Z', '2021-05-08T07:37:30Z', '2021-08-15T19:05:54Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('jwoakes6', '6xe80eZCACi', 'customer', '2021-06-01T08:03:24Z', '2021-08-04T12:55:50Z', '2022-04-16T16:26:50Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('ngoadsby7', 'PnKgveCL', 'customer', '2022-02-15T17:40:36Z', '2022-02-20T20:26:43Z', '2021-07-19T12:23:59Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('jbalharrie8', '4st3n6', 'customer', '2022-02-19T18:24:53Z', '2021-11-26T00:00:22Z', '2021-10-20T17:13:13Z');
insert into users (username, password, role, last_logged_in, created_at, updated_at) values ('opfertner9', 'k2BwmVbk', 'customer', '2021-06-13T02:41:24Z', '2021-06-12T05:08:35Z', '2022-02-24T04:52:26Z');


create table user_profile (
  user_profile_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	phone_number VARCHAR(50),
	birth_date TIMESTAMPTZ
);

insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (1, 'Almeta', 'Odde', 'aodde0@rediff.com', 'Female', '856-364-7664', '2013-10-31T16:38:29Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (2, 'Eyde', 'Alvarado', 'ealvarado1@xrea.com', 'Female', '423-688-4466', '2012-03-15T00:06:20Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (3, 'Jarret', 'Cumberland', 'jcumberland2@taobao.com', 'Bigender', '980-460-9643', '2019-12-04T05:44:39Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (4, 'Kelbee', 'Westmacott', 'kwestmacott3@oaic.gov.au', 'Male', '692-384-1106', '2020-08-16T01:58:58Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (5, 'Missie', 'Frascone', 'mfrascone4@wiley.com', 'Female', '280-540-9984', '2013-05-26T10:27:00Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (6, 'Noella', 'Smalls', 'nsmalls5@bloglines.com', 'Genderfluid', '588-939-4115', '2004-04-25T03:02:03Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (7, 'Lesli', 'Dowsett', 'ldowsett6@livejournal.com', 'Female', '667-900-3275', '2017-06-03T22:49:56Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (8, 'Dicky', 'Andrews', 'dandrews7@blogspot.com', 'Male', '311-560-9258', '2020-09-01T15:39:36Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (9, 'Avery', 'Harroway', 'aharroway8@delicious.com', 'Bigender', '220-852-4201', '2000-03-09T15:09:24Z');
insert into user_profile (user_id, first_name, last_name, email, gender, phone_number, birth_date) values (10, 'Federica', 'Seden', 'fseden9@miibeian.gov.cn', 'Female', null, null);


create table products (
  product_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(50),
	description TEXT,
	price INT,
	user_id INT REFERENCES users(user_id) ON DELETE CASCADE
);

insert into products (name, description, price, user_id) values ('Pepper - Pablano', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 9158, 7);
insert into products (name, description, price, user_id) values ('Crab Brie In Phyllo', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 50817, 7);
insert into products (name, description, price, user_id) values ('Coffee Cup 12oz 5342cd', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 88888, 8);
insert into products (name, description, price, user_id) values ('Nantuket Peach Orange', 'Curabitur in libero ut massa volutpat convallis.', 60491, 7);
insert into products (name, description, price, user_id) values ('Squash - Pattypan, Yellow', 'Nam dui.', 100000, 9);
insert into products (name, description, price, user_id) values ('V8 Splash Strawberry Kiwi', 'Praesent lectus.', 26423, 5);
insert into products (name, description, price, user_id) values ('Plaintain', 'Duis at velit eu est congue elementum.', 9169, 7);
insert into products (name, description, price, user_id) values ('Vol Au Vents', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 3701, 1);
insert into products (name, description, price, user_id) values ('Muffin Batt - Blueberry Passion', 'Aliquam erat volutpat. In congue.', 73863, 10);
insert into products (name, description, price, user_id) values ('Sun - Dried Tomatoes', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 88914, 3);
insert into products (name, description, price, user_id) values ('Sprouts - Brussel', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 63378, 3);
insert into products (name, description, price, user_id) values ('Lotus Leaves', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 84511, 5);
insert into products (name, description, price, user_id) values ('Pork - Bacon, Double Smoked', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 31823, 4);
insert into products (name, description, price, user_id) values ('Juice - Lime', 'Nulla ut erat id mauris vulputate elementum.', 90418, 1);
insert into products (name, description, price, user_id) values ('Cranberry Foccacia', 'Pellentesque at nulla. Suspendisse potenti.', 60912, 7);
insert into products (name, description, price, user_id) values ('Nut - Hazelnut, Whole', 'Suspendisse potenti.', 99064, 2);
insert into products (name, description, price, user_id) values ('Veal - Inside, Choice', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.', 63298, 4);
insert into products (name, description, price, user_id) values ('Celery Root', 'Pellentesque ultrices mattis odio. Donec vitae nisi.', 79006, 2);
insert into products (name, description, price, user_id) values ('Wooden Mop Handle', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 16813, 10);
insert into products (name, description, price, user_id) values ('Clementine', 'In hac habitasse platea dictumst.', 7576, 6);


create table categories (
  category_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	name VARCHAR(10)
);

insert into categories (name) values ('general');
insert into categories (name) values ('food');
insert into categories (name) values ('accessory');
insert into categories (name) values ('technology');
insert into categories (name) values ('shoes');
insert into categories (name) values ('cloths');


create table products_categories (
  products_categories_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  product_id INT REFERENCES products(product_id) ON DELETE CASCADE,
	category_id INT REFERENCES categories(category_id) ON DELETE CASCADE
);

insert into products_categories (product_id, category_id) values (1, 6);
insert into products_categories (product_id, category_id) values (16, 2);
insert into products_categories (product_id, category_id) values (2, 3);
insert into products_categories (product_id, category_id) values (13, 5);
insert into products_categories (product_id, category_id) values (16, 2);
insert into products_categories (product_id, category_id) values (13, 6);
insert into products_categories (product_id, category_id) values (19, 4);
insert into products_categories (product_id, category_id) values (19, 5);
insert into products_categories (product_id, category_id) values (17, 3);
insert into products_categories (product_id, category_id) values (17, 4);
insert into products_categories (product_id, category_id) values (2, 2);
insert into products_categories (product_id, category_id) values (20, 6);
insert into products_categories (product_id, category_id) values (7, 1);
insert into products_categories (product_id, category_id) values (15, 4);
insert into products_categories (product_id, category_id) values (3, 5);
insert into products_categories (product_id, category_id) values (18, 3);
insert into products_categories (product_id, category_id) values (7, 3);
insert into products_categories (product_id, category_id) values (7, 1);
insert into products_categories (product_id, category_id) values (16, 3);
insert into products_categories (product_id, category_id) values (9, 4);
insert into products_categories (product_id, category_id) values (1, 4);
insert into products_categories (product_id, category_id) values (19, 6);
insert into products_categories (product_id, category_id) values (14, 3);
insert into products_categories (product_id, category_id) values (12, 4);
insert into products_categories (product_id, category_id) values (10, 2);
insert into products_categories (product_id, category_id) values (16, 4);
insert into products_categories (product_id, category_id) values (17, 2);
insert into products_categories (product_id, category_id) values (8, 4);
insert into products_categories (product_id, category_id) values (17, 2);
insert into products_categories (product_id, category_id) values (3, 6);
insert into products_categories (product_id, category_id) values (8, 5);
insert into products_categories (product_id, category_id) values (15, 5);
insert into products_categories (product_id, category_id) values (14, 5);
insert into products_categories (product_id, category_id) values (18, 2);
insert into products_categories (product_id, category_id) values (15, 6);
insert into products_categories (product_id, category_id) values (12, 2);
insert into products_categories (product_id, category_id) values (3, 6);
insert into products_categories (product_id, category_id) values (8, 1);
insert into products_categories (product_id, category_id) values (16, 2);
insert into products_categories (product_id, category_id) values (7, 2);



create table orders (
  order_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
	status VARCHAR(8),
	created_at DATE,
	updated_at DATE
);
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2021-12-06T07:28:55Z', '2022-01-19T00:41:52Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'pending', '2021-05-10T19:32:46Z', '2021-05-16T00:00:50Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2022-02-01T15:41:17Z', '2022-01-04T09:13:45Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'canceled', '2021-12-11T23:43:25Z', '2021-06-02T05:42:07Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2022-01-30T17:03:53Z', '2021-09-10T01:20:25Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'pending', '2021-10-26T02:01:36Z', '2021-05-04T03:12:30Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'paid', '2021-09-07T01:52:41Z', '2021-09-30T22:59:45Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2021-08-05T13:35:58Z', '2021-09-25T21:57:50Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2021-07-02T13:43:31Z', '2021-07-10T06:09:38Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'canceled', '2021-10-15T09:18:38Z', '2022-02-20T04:16:57Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2022-02-22T04:04:32Z', '2021-06-22T12:21:28Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'pending', '2021-11-15T06:39:08Z', '2021-06-08T05:16:08Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'pending', '2021-04-25T00:03:05Z', '2021-07-04T11:14:20Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'paid', '2021-12-31T23:23:01Z', '2021-10-29T23:48:39Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2021-10-14T18:34:03Z', '2022-03-03T06:42:44Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'canceled', '2021-11-23T21:56:30Z', '2021-10-14T23:02:14Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'paid', '2021-09-13T23:30:21Z', '2022-01-28T04:08:29Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'paid', '2022-03-30T18:38:59Z', '2021-08-25T21:47:23Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'canceled', '2021-11-02T19:02:37Z', '2022-01-24T01:22:56Z');
insert into orders (user_id, status, created_at, updated_at) values (9, 'canceled', '2021-05-26T05:54:49Z', '2022-02-06T20:34:26Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'pending', '2021-09-18T08:34:40Z', '2021-09-21T12:22:55Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'paid', '2022-01-15T17:49:31Z', '2022-02-26T02:49:41Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'canceled', '2021-11-09T15:00:48Z', '2021-05-07T09:36:28Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2022-02-09T02:38:30Z', '2021-10-16T05:52:14Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'paid', '2021-10-01T12:04:33Z', '2021-08-01T21:50:44Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2022-01-28T22:02:22Z', '2022-02-22T13:15:55Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'pending', '2021-10-09T04:53:30Z', '2021-06-10T03:29:14Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'pending', '2021-11-01T17:02:12Z', '2021-09-03T22:32:25Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'pending', '2021-07-22T15:56:18Z', '2021-05-20T14:52:48Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'pending', '2021-12-07T05:23:47Z', '2022-01-06T22:45:46Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'canceled', '2022-03-14T13:39:28Z', '2021-05-21T10:41:22Z');
insert into orders (user_id, status, created_at, updated_at) values (9, 'pending', '2021-12-13T18:28:35Z', '2021-12-09T15:36:31Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'paid', '2021-12-20T20:08:34Z', '2021-09-27T14:58:31Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'pending', '2021-08-02T08:58:15Z', '2022-01-09T23:11:39Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'canceled', '2021-05-25T08:57:42Z', '2021-06-25T16:34:44Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'pending', '2022-01-19T09:48:26Z', '2021-04-24T07:04:14Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'canceled', '2021-06-24T00:39:58Z', '2021-08-03T09:57:55Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'canceled', '2021-09-26T12:34:55Z', '2021-12-28T07:59:41Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'paid', '2021-08-28T09:57:12Z', '2021-08-07T05:25:46Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'canceled', '2021-07-21T22:59:04Z', '2021-05-04T06:09:25Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'canceled', '2022-02-03T08:37:27Z', '2021-07-19T19:30:47Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'paid', '2022-03-12T16:48:39Z', '2021-06-17T14:52:38Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'paid', '2021-06-16T22:29:07Z', '2021-08-25T12:37:28Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'canceled', '2022-01-05T12:11:19Z', '2021-10-01T05:04:50Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'paid', '2021-07-03T20:18:27Z', '2021-11-25T00:10:30Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'paid', '2021-09-27T08:25:31Z', '2021-06-23T14:00:32Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2021-06-14T23:14:03Z', '2021-05-05T02:07:09Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'canceled', '2021-07-16T16:36:39Z', '2022-01-13T20:20:35Z');
insert into orders (user_id, status, created_at, updated_at) values (9, 'paid', '2021-10-09T02:01:02Z', '2021-05-19T03:39:20Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2021-12-26T18:45:39Z', '2021-10-08T23:58:57Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'canceled', '2021-07-25T15:46:36Z', '2021-06-09T14:14:00Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'canceled', '2021-04-26T19:01:18Z', '2021-05-20T12:12:14Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'canceled', '2022-02-11T00:35:39Z', '2021-08-25T12:54:53Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'canceled', '2022-01-13T07:24:10Z', '2022-03-19T08:37:08Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'pending', '2022-02-05T18:11:39Z', '2021-09-11T13:05:43Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2021-11-03T11:53:42Z', '2022-02-22T00:33:11Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'pending', '2021-09-05T10:04:28Z', '2021-11-02T23:26:19Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'paid', '2021-12-26T15:12:24Z', '2022-04-20T12:34:48Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'paid', '2021-05-11T02:54:06Z', '2021-08-03T09:20:38Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'canceled', '2022-04-03T09:52:57Z', '2021-06-27T14:50:59Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'pending', '2021-10-05T20:50:57Z', '2022-03-11T17:14:42Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'paid', '2021-09-29T06:08:27Z', '2021-06-01T17:26:02Z');
insert into orders (user_id, status, created_at, updated_at) values (9, 'paid', '2021-04-25T21:13:50Z', '2021-05-18T16:02:47Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'pending', '2022-01-13T00:26:43Z', '2021-11-14T21:42:57Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'paid', '2022-01-17T03:59:51Z', '2021-12-12T07:05:36Z');
insert into orders (user_id, status, created_at, updated_at) values (9, 'paid', '2021-12-18T02:26:23Z', '2022-02-21T21:29:22Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'canceled', '2021-12-07T05:40:19Z', '2021-11-03T08:12:17Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'pending', '2021-07-19T13:33:57Z', '2021-12-03T13:48:30Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2022-01-24T23:08:09Z', '2021-05-18T18:57:19Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'pending', '2021-07-30T09:05:06Z', '2021-05-01T12:01:30Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'pending', '2021-07-06T12:41:27Z', '2021-10-21T20:25:39Z');
insert into orders (user_id, status, created_at, updated_at) values (9, 'paid', '2021-12-18T07:21:48Z', '2022-03-25T23:26:59Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'paid', '2021-10-18T22:46:51Z', '2021-12-22T14:50:41Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'canceled', '2021-09-05T11:41:45Z', '2021-08-11T01:26:18Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'canceled', '2021-07-12T20:44:46Z', '2021-12-05T11:01:38Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'paid', '2021-05-15T03:47:57Z', '2021-10-28T14:46:30Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'canceled', '2022-03-11T08:35:18Z', '2021-05-17T08:07:08Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'pending', '2021-09-23T23:34:37Z', '2021-09-05T20:24:50Z');
insert into orders (user_id, status, created_at, updated_at) values (2, 'paid', '2021-10-27T23:09:14Z', '2021-08-23T11:23:25Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'paid', '2022-02-25T09:23:51Z', '2021-12-21T15:20:16Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'canceled', '2022-03-18T05:19:58Z', '2022-03-06T06:30:16Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'pending', '2022-02-04T20:23:56Z', '2021-10-01T08:20:48Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'canceled', '2021-12-19T06:29:59Z', '2021-06-11T04:17:30Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2022-03-22T10:11:05Z', '2022-01-25T18:15:40Z');
insert into orders (user_id, status, created_at, updated_at) values (3, 'pending', '2022-02-27T01:57:33Z', '2021-06-10T17:41:46Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'pending', '2021-07-11T20:12:04Z', '2021-09-21T10:02:27Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'canceled', '2022-03-20T11:15:17Z', '2022-02-13T08:21:48Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'canceled', '2021-11-19T01:22:53Z', '2021-05-22T20:28:28Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'paid', '2021-07-13T09:33:17Z', '2021-05-01T15:19:15Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'canceled', '2021-09-20T05:03:16Z', '2021-10-25T18:40:35Z');
insert into orders (user_id, status, created_at, updated_at) values (1, 'paid', '2022-03-23T18:36:51Z', '2022-02-03T22:36:52Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'paid', '2022-04-16T16:13:58Z', '2022-01-21T19:43:57Z');
insert into orders (user_id, status, created_at, updated_at) values (4, 'paid', '2022-04-20T21:53:52Z', '2021-12-27T05:22:57Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'canceled', '2021-05-15T09:56:50Z', '2021-05-08T18:10:11Z');
insert into orders (user_id, status, created_at, updated_at) values (8, 'canceled', '2021-08-17T02:35:37Z', '2021-05-01T04:43:26Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'paid', '2022-03-17T23:35:17Z', '2021-06-12T07:25:59Z');
insert into orders (user_id, status, created_at, updated_at) values (5, 'pending', '2021-11-15T03:41:04Z', '2021-10-20T16:03:30Z');
insert into orders (user_id, status, created_at, updated_at) values (6, 'canceled', '2021-10-04T22:00:06Z', '2021-09-05T06:24:31Z');
insert into orders (user_id, status, created_at, updated_at) values (7, 'pending', '2022-04-21T03:36:10Z', '2021-12-19T04:17:59Z');
insert into orders (user_id, status, created_at, updated_at) values (10, 'pending', '2021-09-17T18:44:41Z', '2021-05-23T04:55:54Z');

create table order_items (
  order_item_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  order_id INT REFERENCES orders(order_id) ON DELETE CASCADE,
  product_id INT REFERENCES products(product_id),
	quantity INT
);
insert into order_items (order_id, product_id, quantity) values (84, 18, 293);
insert into order_items (order_id, product_id, quantity) values (22, 12, 968);
insert into order_items (order_id, product_id, quantity) values (2, 7, 577);
insert into order_items (order_id, product_id, quantity) values (46, 12, 655);
insert into order_items (order_id, product_id, quantity) values (94, 8, 18);
insert into order_items (order_id, product_id, quantity) values (18, 3, 70);
insert into order_items (order_id, product_id, quantity) values (24, 14, 570);
insert into order_items (order_id, product_id, quantity) values (82, 10, 91);
insert into order_items (order_id, product_id, quantity) values (75, 11, 828);
insert into order_items (order_id, product_id, quantity) values (52, 10, 337);
insert into order_items (order_id, product_id, quantity) values (55, 4, 555);
insert into order_items (order_id, product_id, quantity) values (13, 19, 94);
insert into order_items (order_id, product_id, quantity) values (84, 11, 236);
insert into order_items (order_id, product_id, quantity) values (44, 14, 273);
insert into order_items (order_id, product_id, quantity) values (83, 18, 78);
insert into order_items (order_id, product_id, quantity) values (4, 19, 532);
insert into order_items (order_id, product_id, quantity) values (87, 14, 540);
insert into order_items (order_id, product_id, quantity) values (13, 8, 968);
insert into order_items (order_id, product_id, quantity) values (38, 6, 607);
insert into order_items (order_id, product_id, quantity) values (82, 5, 395);
insert into order_items (order_id, product_id, quantity) values (70, 7, 388);
insert into order_items (order_id, product_id, quantity) values (49, 16, 769);
insert into order_items (order_id, product_id, quantity) values (97, 7, 136);
insert into order_items (order_id, product_id, quantity) values (62, 19, 631);
insert into order_items (order_id, product_id, quantity) values (53, 1, 157);
insert into order_items (order_id, product_id, quantity) values (96, 7, 150);
insert into order_items (order_id, product_id, quantity) values (5, 10, 650);
insert into order_items (order_id, product_id, quantity) values (15, 18, 577);
insert into order_items (order_id, product_id, quantity) values (91, 12, 707);
insert into order_items (order_id, product_id, quantity) values (91, 4, 539);
insert into order_items (order_id, product_id, quantity) values (57, 7, 632);
insert into order_items (order_id, product_id, quantity) values (100, 11, 358);
insert into order_items (order_id, product_id, quantity) values (30, 13, 90);
insert into order_items (order_id, product_id, quantity) values (12, 13, 959);
insert into order_items (order_id, product_id, quantity) values (89, 18, 148);
insert into order_items (order_id, product_id, quantity) values (20, 3, 879);
insert into order_items (order_id, product_id, quantity) values (72, 5, 528);
insert into order_items (order_id, product_id, quantity) values (4, 2, 381);
insert into order_items (order_id, product_id, quantity) values (52, 15, 484);
insert into order_items (order_id, product_id, quantity) values (50, 4, 261);
insert into order_items (order_id, product_id, quantity) values (13, 17, 24);
insert into order_items (order_id, product_id, quantity) values (78, 4, 26);
insert into order_items (order_id, product_id, quantity) values (28, 15, 112);
insert into order_items (order_id, product_id, quantity) values (89, 2, 338);
insert into order_items (order_id, product_id, quantity) values (81, 8, 307);
insert into order_items (order_id, product_id, quantity) values (43, 9, 693);
insert into order_items (order_id, product_id, quantity) values (60, 3, 880);
insert into order_items (order_id, product_id, quantity) values (10, 18, 90);
insert into order_items (order_id, product_id, quantity) values (89, 5, 143);
insert into order_items (order_id, product_id, quantity) values (7, 1, 231);
insert into order_items (order_id, product_id, quantity) values (92, 20, 963);
insert into order_items (order_id, product_id, quantity) values (88, 12, 155);
insert into order_items (order_id, product_id, quantity) values (21, 16, 895);
insert into order_items (order_id, product_id, quantity) values (2, 14, 136);
insert into order_items (order_id, product_id, quantity) values (42, 2, 2);
insert into order_items (order_id, product_id, quantity) values (85, 2, 446);
insert into order_items (order_id, product_id, quantity) values (81, 17, 262);
insert into order_items (order_id, product_id, quantity) values (75, 12, 744);
insert into order_items (order_id, product_id, quantity) values (8, 20, 373);
insert into order_items (order_id, product_id, quantity) values (34, 7, 361);
insert into order_items (order_id, product_id, quantity) values (75, 3, 782);
insert into order_items (order_id, product_id, quantity) values (64, 19, 247);
insert into order_items (order_id, product_id, quantity) values (26, 14, 958);
insert into order_items (order_id, product_id, quantity) values (92, 15, 501);
insert into order_items (order_id, product_id, quantity) values (8, 4, 499);
insert into order_items (order_id, product_id, quantity) values (26, 17, 678);
insert into order_items (order_id, product_id, quantity) values (37, 20, 881);
insert into order_items (order_id, product_id, quantity) values (43, 16, 121);
insert into order_items (order_id, product_id, quantity) values (15, 20, 929);
insert into order_items (order_id, product_id, quantity) values (87, 7, 143);
insert into order_items (order_id, product_id, quantity) values (68, 6, 339);
insert into order_items (order_id, product_id, quantity) values (24, 9, 952);
insert into order_items (order_id, product_id, quantity) values (74, 16, 617);
insert into order_items (order_id, product_id, quantity) values (50, 11, 249);
insert into order_items (order_id, product_id, quantity) values (5, 20, 644);
insert into order_items (order_id, product_id, quantity) values (74, 2, 247);
insert into order_items (order_id, product_id, quantity) values (72, 3, 183);
insert into order_items (order_id, product_id, quantity) values (58, 4, 937);
insert into order_items (order_id, product_id, quantity) values (92, 20, 318);
insert into order_items (order_id, product_id, quantity) values (58, 4, 406);
insert into order_items (order_id, product_id, quantity) values (19, 12, 693);
insert into order_items (order_id, product_id, quantity) values (77, 19, 8);
insert into order_items (order_id, product_id, quantity) values (3, 14, 201);
insert into order_items (order_id, product_id, quantity) values (15, 4, 151);
insert into order_items (order_id, product_id, quantity) values (43, 8, 611);
insert into order_items (order_id, product_id, quantity) values (84, 1, 357);
insert into order_items (order_id, product_id, quantity) values (1, 1, 977);
insert into order_items (order_id, product_id, quantity) values (62, 12, 33);
insert into order_items (order_id, product_id, quantity) values (18, 18, 961);
insert into order_items (order_id, product_id, quantity) values (23, 4, 168);
insert into order_items (order_id, product_id, quantity) values (84, 6, 710);
insert into order_items (order_id, product_id, quantity) values (10, 5, 806);
insert into order_items (order_id, product_id, quantity) values (25, 7, 650);
insert into order_items (order_id, product_id, quantity) values (83, 9, 467);
insert into order_items (order_id, product_id, quantity) values (72, 12, 74);
insert into order_items (order_id, product_id, quantity) values (53, 19, 658);
insert into order_items (order_id, product_id, quantity) values (14, 18, 658);
insert into order_items (order_id, product_id, quantity) values (34, 7, 374);
insert into order_items (order_id, product_id, quantity) values (7, 18, 696);
insert into order_items (order_id, product_id, quantity) values (25, 16, 829);
insert into order_items (order_id, product_id, quantity) values (70, 20, 571);
insert into order_items (order_id, product_id, quantity) values (5, 20, 824);
insert into order_items (order_id, product_id, quantity) values (15, 19, 649);
insert into order_items (order_id, product_id, quantity) values (35, 11, 241);
insert into order_items (order_id, product_id, quantity) values (13, 1, 64);
insert into order_items (order_id, product_id, quantity) values (94, 3, 74);
insert into order_items (order_id, product_id, quantity) values (42, 10, 266);
insert into order_items (order_id, product_id, quantity) values (56, 9, 514);
insert into order_items (order_id, product_id, quantity) values (97, 16, 493);
insert into order_items (order_id, product_id, quantity) values (63, 14, 14);
insert into order_items (order_id, product_id, quantity) values (64, 10, 678);
insert into order_items (order_id, product_id, quantity) values (20, 5, 474);
insert into order_items (order_id, product_id, quantity) values (49, 19, 994);
insert into order_items (order_id, product_id, quantity) values (17, 6, 374);
insert into order_items (order_id, product_id, quantity) values (54, 13, 151);
insert into order_items (order_id, product_id, quantity) values (49, 16, 636);
insert into order_items (order_id, product_id, quantity) values (80, 2, 81);
insert into order_items (order_id, product_id, quantity) values (87, 14, 436);
insert into order_items (order_id, product_id, quantity) values (32, 3, 645);
insert into order_items (order_id, product_id, quantity) values (44, 12, 381);
insert into order_items (order_id, product_id, quantity) values (71, 15, 798);
insert into order_items (order_id, product_id, quantity) values (56, 16, 499);
insert into order_items (order_id, product_id, quantity) values (28, 16, 449);
insert into order_items (order_id, product_id, quantity) values (22, 18, 342);
insert into order_items (order_id, product_id, quantity) values (1, 5, 169);
insert into order_items (order_id, product_id, quantity) values (57, 12, 825);
insert into order_items (order_id, product_id, quantity) values (93, 13, 632);
insert into order_items (order_id, product_id, quantity) values (27, 13, 587);
insert into order_items (order_id, product_id, quantity) values (65, 6, 37);
insert into order_items (order_id, product_id, quantity) values (82, 17, 500);
insert into order_items (order_id, product_id, quantity) values (6, 4, 172);
insert into order_items (order_id, product_id, quantity) values (7, 20, 914);
insert into order_items (order_id, product_id, quantity) values (81, 7, 919);
insert into order_items (order_id, product_id, quantity) values (73, 11, 350);
insert into order_items (order_id, product_id, quantity) values (71, 16, 562);
insert into order_items (order_id, product_id, quantity) values (47, 3, 428);
insert into order_items (order_id, product_id, quantity) values (67, 16, 404);
insert into order_items (order_id, product_id, quantity) values (76, 8, 773);
insert into order_items (order_id, product_id, quantity) values (91, 16, 637);
insert into order_items (order_id, product_id, quantity) values (92, 2, 248);
insert into order_items (order_id, product_id, quantity) values (12, 18, 741);
insert into order_items (order_id, product_id, quantity) values (35, 17, 853);
insert into order_items (order_id, product_id, quantity) values (65, 12, 203);
insert into order_items (order_id, product_id, quantity) values (84, 2, 422);
insert into order_items (order_id, product_id, quantity) values (6, 14, 899);
insert into order_items (order_id, product_id, quantity) values (49, 14, 716);
insert into order_items (order_id, product_id, quantity) values (28, 6, 786);
insert into order_items (order_id, product_id, quantity) values (46, 8, 505);
insert into order_items (order_id, product_id, quantity) values (71, 13, 242);
insert into order_items (order_id, product_id, quantity) values (72, 20, 606);
insert into order_items (order_id, product_id, quantity) values (99, 12, 345);
insert into order_items (order_id, product_id, quantity) values (33, 19, 299);
insert into order_items (order_id, product_id, quantity) values (14, 20, 659);
insert into order_items (order_id, product_id, quantity) values (27, 16, 373);
insert into order_items (order_id, product_id, quantity) values (87, 8, 475);
insert into order_items (order_id, product_id, quantity) values (65, 7, 677);
insert into order_items (order_id, product_id, quantity) values (32, 15, 654);
insert into order_items (order_id, product_id, quantity) values (40, 6, 717);
insert into order_items (order_id, product_id, quantity) values (43, 7, 729);
insert into order_items (order_id, product_id, quantity) values (79, 17, 927);
insert into order_items (order_id, product_id, quantity) values (94, 9, 603);
insert into order_items (order_id, product_id, quantity) values (19, 10, 596);
insert into order_items (order_id, product_id, quantity) values (99, 5, 955);
insert into order_items (order_id, product_id, quantity) values (29, 6, 66);
insert into order_items (order_id, product_id, quantity) values (27, 17, 991);
insert into order_items (order_id, product_id, quantity) values (49, 3, 102);
insert into order_items (order_id, product_id, quantity) values (8, 20, 879);
insert into order_items (order_id, product_id, quantity) values (37, 10, 903);
insert into order_items (order_id, product_id, quantity) values (36, 14, 53);
insert into order_items (order_id, product_id, quantity) values (74, 12, 166);
insert into order_items (order_id, product_id, quantity) values (55, 15, 145);
insert into order_items (order_id, product_id, quantity) values (39, 15, 101);
insert into order_items (order_id, product_id, quantity) values (58, 12, 160);
insert into order_items (order_id, product_id, quantity) values (37, 17, 565);
insert into order_items (order_id, product_id, quantity) values (26, 20, 947);
insert into order_items (order_id, product_id, quantity) values (32, 16, 853);
insert into order_items (order_id, product_id, quantity) values (7, 3, 137);
insert into order_items (order_id, product_id, quantity) values (88, 3, 419);
insert into order_items (order_id, product_id, quantity) values (8, 2, 512);
insert into order_items (order_id, product_id, quantity) values (99, 20, 515);
insert into order_items (order_id, product_id, quantity) values (7, 16, 549);
insert into order_items (order_id, product_id, quantity) values (13, 12, 592);
insert into order_items (order_id, product_id, quantity) values (74, 6, 937);
insert into order_items (order_id, product_id, quantity) values (50, 5, 34);
insert into order_items (order_id, product_id, quantity) values (21, 16, 99);
insert into order_items (order_id, product_id, quantity) values (18, 4, 443);
insert into order_items (order_id, product_id, quantity) values (33, 5, 311);
insert into order_items (order_id, product_id, quantity) values (100, 17, 33);
insert into order_items (order_id, product_id, quantity) values (72, 11, 847);
insert into order_items (order_id, product_id, quantity) values (3, 13, 73);
insert into order_items (order_id, product_id, quantity) values (58, 13, 653);
insert into order_items (order_id, product_id, quantity) values (44, 11, 615);
insert into order_items (order_id, product_id, quantity) values (48, 6, 847);
insert into order_items (order_id, product_id, quantity) values (20, 16, 539);
insert into order_items (order_id, product_id, quantity) values (37, 1, 12);
insert into order_items (order_id, product_id, quantity) values (13, 1, 694);
insert into order_items (order_id, product_id, quantity) values (26, 9, 599);
insert into order_items (order_id, product_id, quantity) values (59, 14, 301);
insert into order_items (order_id, product_id, quantity) values (27, 14, 363);
insert into order_items (order_id, product_id, quantity) values (11, 3, 37);
insert into order_items (order_id, product_id, quantity) values (62, 9, 905);
insert into order_items (order_id, product_id, quantity) values (39, 5, 869);
insert into order_items (order_id, product_id, quantity) values (16, 1, 325);
insert into order_items (order_id, product_id, quantity) values (31, 18, 380);
insert into order_items (order_id, product_id, quantity) values (58, 12, 653);
insert into order_items (order_id, product_id, quantity) values (47, 16, 470);
insert into order_items (order_id, product_id, quantity) values (17, 12, 468);
insert into order_items (order_id, product_id, quantity) values (75, 9, 462);
insert into order_items (order_id, product_id, quantity) values (31, 15, 758);
insert into order_items (order_id, product_id, quantity) values (79, 3, 597);
insert into order_items (order_id, product_id, quantity) values (68, 12, 443);
insert into order_items (order_id, product_id, quantity) values (44, 9, 813);
insert into order_items (order_id, product_id, quantity) values (62, 8, 190);
insert into order_items (order_id, product_id, quantity) values (52, 14, 965);
insert into order_items (order_id, product_id, quantity) values (29, 12, 872);
insert into order_items (order_id, product_id, quantity) values (22, 12, 580);
insert into order_items (order_id, product_id, quantity) values (62, 10, 674);
insert into order_items (order_id, product_id, quantity) values (12, 5, 981);
insert into order_items (order_id, product_id, quantity) values (98, 8, 390);
insert into order_items (order_id, product_id, quantity) values (11, 19, 956);
insert into order_items (order_id, product_id, quantity) values (51, 6, 870);
insert into order_items (order_id, product_id, quantity) values (24, 11, 328);
insert into order_items (order_id, product_id, quantity) values (31, 6, 251);
insert into order_items (order_id, product_id, quantity) values (1, 8, 890);
insert into order_items (order_id, product_id, quantity) values (80, 1, 96);
insert into order_items (order_id, product_id, quantity) values (40, 16, 372);
insert into order_items (order_id, product_id, quantity) values (51, 11, 347);
insert into order_items (order_id, product_id, quantity) values (19, 17, 598);
insert into order_items (order_id, product_id, quantity) values (22, 9, 951);
insert into order_items (order_id, product_id, quantity) values (94, 4, 342);
insert into order_items (order_id, product_id, quantity) values (22, 8, 648);
insert into order_items (order_id, product_id, quantity) values (54, 12, 396);
insert into order_items (order_id, product_id, quantity) values (96, 14, 817);
insert into order_items (order_id, product_id, quantity) values (21, 18, 822);
insert into order_items (order_id, product_id, quantity) values (38, 10, 600);
insert into order_items (order_id, product_id, quantity) values (35, 19, 874);
insert into order_items (order_id, product_id, quantity) values (66, 1, 770);
insert into order_items (order_id, product_id, quantity) values (10, 20, 73);
insert into order_items (order_id, product_id, quantity) values (49, 18, 380);
insert into order_items (order_id, product_id, quantity) values (55, 1, 480);
insert into order_items (order_id, product_id, quantity) values (37, 20, 583);
insert into order_items (order_id, product_id, quantity) values (41, 4, 686);
insert into order_items (order_id, product_id, quantity) values (73, 17, 668);
insert into order_items (order_id, product_id, quantity) values (5, 13, 609);
insert into order_items (order_id, product_id, quantity) values (13, 13, 731);
insert into order_items (order_id, product_id, quantity) values (20, 12, 421);
insert into order_items (order_id, product_id, quantity) values (1, 11, 421);
insert into order_items (order_id, product_id, quantity) values (3, 3, 569);
insert into order_items (order_id, product_id, quantity) values (63, 2, 588);
insert into order_items (order_id, product_id, quantity) values (94, 14, 807);
insert into order_items (order_id, product_id, quantity) values (13, 6, 50);
insert into order_items (order_id, product_id, quantity) values (70, 5, 550);
insert into order_items (order_id, product_id, quantity) values (86, 15, 93);
insert into order_items (order_id, product_id, quantity) values (3, 20, 455);
insert into order_items (order_id, product_id, quantity) values (3, 18, 941);
insert into order_items (order_id, product_id, quantity) values (54, 2, 559);
insert into order_items (order_id, product_id, quantity) values (33, 20, 724);
insert into order_items (order_id, product_id, quantity) values (94, 8, 416);
insert into order_items (order_id, product_id, quantity) values (14, 14, 108);
insert into order_items (order_id, product_id, quantity) values (85, 5, 712);
insert into order_items (order_id, product_id, quantity) values (66, 8, 589);
insert into order_items (order_id, product_id, quantity) values (68, 10, 419);
insert into order_items (order_id, product_id, quantity) values (46, 11, 729);
insert into order_items (order_id, product_id, quantity) values (29, 3, 324);
insert into order_items (order_id, product_id, quantity) values (5, 14, 699);
insert into order_items (order_id, product_id, quantity) values (79, 16, 254);
insert into order_items (order_id, product_id, quantity) values (45, 10, 722);
insert into order_items (order_id, product_id, quantity) values (55, 10, 506);
insert into order_items (order_id, product_id, quantity) values (63, 16, 44);
insert into order_items (order_id, product_id, quantity) values (79, 8, 147);
insert into order_items (order_id, product_id, quantity) values (70, 11, 929);
insert into order_items (order_id, product_id, quantity) values (14, 16, 281);
insert into order_items (order_id, product_id, quantity) values (79, 14, 896);
insert into order_items (order_id, product_id, quantity) values (73, 2, 479);
insert into order_items (order_id, product_id, quantity) values (44, 3, 976);
insert into order_items (order_id, product_id, quantity) values (8, 16, 313);
insert into order_items (order_id, product_id, quantity) values (31, 16, 840);
insert into order_items (order_id, product_id, quantity) values (24, 12, 21);
insert into order_items (order_id, product_id, quantity) values (93, 15, 584);
insert into order_items (order_id, product_id, quantity) values (44, 19, 380);
insert into order_items (order_id, product_id, quantity) values (63, 19, 516);
insert into order_items (order_id, product_id, quantity) values (43, 19, 254);
insert into order_items (order_id, product_id, quantity) values (17, 13, 566);
insert into order_items (order_id, product_id, quantity) values (45, 13, 231);
insert into order_items (order_id, product_id, quantity) values (6, 14, 997);
insert into order_items (order_id, product_id, quantity) values (76, 6, 205);
insert into order_items (order_id, product_id, quantity) values (6, 19, 303);
insert into order_items (order_id, product_id, quantity) values (73, 10, 498);
insert into order_items (order_id, product_id, quantity) values (43, 3, 171);
insert into order_items (order_id, product_id, quantity) values (79, 2, 763);
insert into order_items (order_id, product_id, quantity) values (81, 13, 722);
insert into order_items (order_id, product_id, quantity) values (1, 19, 531);
insert into order_items (order_id, product_id, quantity) values (3, 14, 237);
insert into order_items (order_id, product_id, quantity) values (48, 5, 888);
insert into order_items (order_id, product_id, quantity) values (9, 13, 781);
insert into order_items (order_id, product_id, quantity) values (93, 7, 692);
insert into order_items (order_id, product_id, quantity) values (16, 6, 560);
insert into order_items (order_id, product_id, quantity) values (13, 6, 650);
insert into order_items (order_id, product_id, quantity) values (60, 8, 514);
insert into order_items (order_id, product_id, quantity) values (48, 12, 915);

create table address (
  address_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
	street VARCHAR(50),
	house_number INT,
	district VARCHAR(50),
	sub_district TEXT,
	zip_code VARCHAR(50)
);
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (5, '4', 54, 'Sintenis'' Spike-rush', 'curae mauris viverra diam', null);
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (1, '1114', 60, 'Narrowleaf Bedstraw', 'curae duis', null);
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (9, '8387', 17, 'Broadbeard Beardtongue', 'nulla eget', 'R2J');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (7, '194', 91, 'Lane Mountain Milkvetch', 'nec sem duis', '4980-782');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (6, '9622', 16, 'Disc Lichen', 'enim in', '8104');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (5, '315', 51, 'Fineleaf Pondweed', 'accumsan tellus nisi', 'H7V');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (5, '381', 33, 'Brittleleaf Manzanita', 'maecenas tristique', '34280');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (9, '3492', 9, 'Apachebush', 'consequat', '368380');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (9, '61', 62, 'Texas Pinkroot', 'ut', null);
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (5, '11', 4, 'Furniss''s Phacelia', 'morbi', '6417');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (6, '05', 23, 'Kuroiwa Grass', 'in leo maecenas', null);
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (1, '0050', 36, 'Ovate Tetrodontium Moss', 'vel', '58000-000');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (7, '717', 7, 'Clustered Fescue', 'sollicitudin ut', null);
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (5, '051', 41, 'Rockyplains Dwarf Morning-glory', 'elementum ligula vehicula consequat', '11830');
insert into address (user_id, street, house_number, district, sub_district, zip_code) values (6, '287', 36, 'Yerba De Cabra', 'ipsum aliquam non mauris', '4513');


create table carts (
	cart_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  user_id INT REFERENCES users(user_id) ON DELETE CASCADE
);
insert into carts (user_id) values (1);
insert into carts (user_id) values (2);
insert into carts (user_id) values (3);
insert into carts (user_id) values (4);
insert into carts (user_id) values (5);
insert into carts (user_id) values (6);
insert into carts (user_id) values (7);
insert into carts (user_id) values (8);
insert into carts (user_id) values (9);
insert into carts (user_id) values (10);


create table carts_products (
  carts_products_id  INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  cart_id INT REFERENCES carts(cart_id) ON DELETE CASCADE,
  product_id INT REFERENCES products(product_id),
	quantity INT
);

insert into carts_products (cart_id, product_id, quantity) values (2, 4, 42);
insert into carts_products (cart_id, product_id, quantity) values (5, 18, 35);
insert into carts_products (cart_id, product_id, quantity) values (6, 2, 64);
insert into carts_products (cart_id, product_id, quantity) values (6, 12, 42);
insert into carts_products (cart_id, product_id, quantity) values (2, 6, 21);
insert into carts_products (cart_id, product_id, quantity) values (7, 4, 33);
insert into carts_products (cart_id, product_id, quantity) values (2, 10, 18);
insert into carts_products (cart_id, product_id, quantity) values (7, 4, 30);
insert into carts_products (cart_id, product_id, quantity) values (8, 15, 66);
insert into carts_products (cart_id, product_id, quantity) values (4, 3, 12);
insert into carts_products (cart_id, product_id, quantity) values (5, 2, 63);
insert into carts_products (cart_id, product_id, quantity) values (2, 10, 25);
insert into carts_products (cart_id, product_id, quantity) values (3, 20, 81);
insert into carts_products (cart_id, product_id, quantity) values (10, 7, 56);
insert into carts_products (cart_id, product_id, quantity) values (5, 14, 34);
insert into carts_products (cart_id, product_id, quantity) values (10, 8, 21);
insert into carts_products (cart_id, product_id, quantity) values (7, 12, 60);
insert into carts_products (cart_id, product_id, quantity) values (10, 8, 72);
insert into carts_products (cart_id, product_id, quantity) values (6, 11, 20);
insert into carts_products (cart_id, product_id, quantity) values (3, 2, 75);
