--insert statements
insert into inventory values
(1, 'Cadillac', 'CT6', 2016, 25000, 4);
insert into inventory values
(2, 'Nissan', 'Ultima', 2012, 15000, 4);

insert into invoice values
(1, 1, 1, 1, 35000);
insert into invoice values
(2, 2, 2, 2, 25000);

insert into mechanic values
(1, 'Christian', 'Bale');
insert into mechanic values
(2, 'John', 'Smith');

insert into parts values
(1, 'headlights', 100, 10);
insert into parts values
(2, 'filters', 70, 30);

insert into service_ticket values
(1, 1, 1, 1, 1, 100);
insert into service_ticket values
(2, 2, 2, 2, 2, 70);
insert into service_ticket values 
(3, 2, 2, 1, 1, 100);

insert into service_history values
(1, 1, 1, 'Leaky sparkplug serviced and faulty break lights fixed');
insert into service_history values
(2, 2, 2, 'Leather seating upholstered');

--insert statements using functions

SELECT salesman(1,'Don', 'Draper');
select salesman(2, 'Michael', 'Scott');

SELECT customer(1,'Ash', 'Williams', 'evildeadash@yahoo.com');
select customer(2, 'Peter', 'Parker', 'gospideygo@gmail.com');



-- Just wanted to see if tables were functioning together correctly!
-- select *
-- from mechanic m
-- inner join service_ticket st
-- on m.mechanic_id = st.mechanic_id
-- where first_name = 'John'








