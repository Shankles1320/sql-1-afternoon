create table person_data(
	person_id serial primary key,
  person_name varchar(200),
  person_age integer,
  persone_height integer,
  person_city varchar(200),
  person_favorite_color varchar(200)
);
insert into person (name, age, height, city, favorite_color)
values
  ('Trey', 32, 6, 'Tempe', 'green'),
  ('Sheila', 27, 5.2, 'Tempe', 'blue'),
  ('Kate', 33, 5.5, 'Chandler', 'purple'),
  ('Eric', 32, 5.3, 'Chandler', 'red'),
  ('Katie', 29, 5.11, 'Phoenix', 'pink');
    select * from person order by height desc;

    select * from person order by height asc;

    select * from person order by age desc;

    select * from person 
where age > 20;

select * from person
where age = 32;

select * from person
where age != 20 and age > 30;

select * from person
where age != 27;

select * from person
where favorite_color != 'red';

select * from person
where favorite_color != 'red' and favorite_color != 'blue';

select * from person
where favorite_color = 'orange' or favorite_color = 'green';

select * from person
where favorite_color in ('orange', 'green', 'blue');

select * from person
where favorite_color in ('yellow', 'purple');


-------------------------------------------

drop table exists orders;

create table orders(
  order_id serial primary key,
  person_id integer,
  product_name varchar(200),
  product_price numeric,
  quantity integer);

  insert into orders(person_id, product_name, product_price, quantity)
values
(3, 'eggs', 12.50, 4),
(2, 'bread', 13, 5),
(5, 'wings', 10.50, 12),
(1, 'burger', 15, 1),
(4, 'salad', 8.50, 2);

select * from orders;

select sum(quantity) from orders;

select sum(product_price * quantity) from orders;

select sum(product_price * quantity) from orders
where person_id = 2;

-----------------------------------------

insert into artist (name)
values ('artist name');

insert into artist(name)
values
('DMB'),
('counting crows'),
('rage against the machine');

select * from artist order by name desc limit 10;

select * from artist order by name asc limit 5;

select * from artist 
where name ilike 'black%';

select * from artist 
where name like '%Black%';
-----------------------------------------

select first_name, last_name from employee
where city = 'Calgary';

select max(birth_date) from employee;

select min(birth_date) from employee;

select * from employee
where reports_to = 2;

select * from employee
where city = 'Lethbridge';

----------------------------------------

select count(*) from invoice
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select * from invoice
where total > 5;

select count(*) from invoice
where total < 5;

select count(*) from invoice
where billing_state in ('CA', 'TX', 'AZ');

select avg(total) from invoice;

select sum(total) from invoice;