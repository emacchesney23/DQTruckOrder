drop table if exists product;
drop table if exists currentOrder;
drop table if exists pastOrders;
drop table if exists pastStock;

create table product(
	name varchar(30) not null primary key,
    price numeric(3,2) not null,
    cur_Stock int not null
);

create table currentOrder(
	product_name varchar(30) not null,
    num_product int not null,
    price_per_product numeric(4,2) not null,
    foreign key(product_name) references product(name)
);

create table pastOrders(
	order_id int not null primary key,
    product 
);