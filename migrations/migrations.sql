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
