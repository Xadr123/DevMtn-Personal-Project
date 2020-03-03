create table users (
  user_id serial primary key,
  user_email varchar(250),
  user_password varchar(100)
);
create table products (
  product_id serial primary key,
  product_image varchar(500),
  product_name varchar(250),
  product_description varchar(2000),
  product_price int,
  product_parts boolean
);
create table wishlists (
  user_id int references users(user_id),
  product_id int references products(product_id)
);