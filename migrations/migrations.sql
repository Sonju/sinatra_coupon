CREATE DATABASE sinatra_coupon;

\c sinatra_coupon;

CREATE TABLE coupons (
	id SERIAL PRIMARY KEY,
	title varchar(255),
	description text,
	discount decimal,
	expiration_date varchar(255),
	vendor varchar(255),
	img_url varchar(255)
);

INSERT INTO coupons (title, description, discount, expiration_date, vendor, img_url)
VALUES
('Mariano', 'Milk', 20, '12/12/2015', 'online','picture'),
('Tony', 'Bread', 10, '10/12/2015', 'online','picture'),
('Benny', 'Wine', 30, '09/12/2015', 'Chicago', 'picture'),
('Jewel', 'Cheese', 25, '08/30/2015', 'Grand Ave','picture'),
('Marioano', 'Orange Juice', 20, '12/12/2015', 'Vernon Hills','picture');
