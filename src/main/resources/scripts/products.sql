drop table products if EXISTS;
create table products (
   id       INTEGER IDENTITY,
   name VARCHAR(50),
   manufacturer VARCHAR(50),
   description VARCHAR(250),
   added TIMESTAMP,
   modified TIMESTAMP);