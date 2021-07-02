ARTIST TABLE
1
INSERT INTO artist (name)
	VALUES ('World Destroyers');
INSERT INTO artist (name)
	VALUES ('Billy Bob Joe and the Appalacian Banjos');
INSERT INTO artist (name)
	VALUES ('Death Mango');


2
select * from artist
order by name
limit 5


EMPLOYEE TABLE
1
select first_name, last_name
from employee
where city = 'Calgary'


2
select * from employee
where reports_to = 2


3
select city, count(*)
from employee
where city = 'Lethbridge'
group by city


INVOICE TABLE
1
select billing_country, count(*)
from invoice
where billing_country = 'USA'
group by billing_country


2
select max(total) from invoice


3
select min(total) from invoice

4
select * from invoice
where total > 5


5
select count(*) from invoice
where total < 5


6
select sum(total)
from invoice


JOIN QUERIES

1
select * from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price >= 1.00


2
select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on i.customer_id = c.customer_id


3
select c.first_name as CustomerFName, c.last_name, e.first_name as SalesRepName, e.last_name as SalesRepLName
from customer c
join employee e on c.support_rep_id = e.employee_id;


4
select ar.name, al.title
from artist ar
join album al on al.artist_id = ar.artist_id;


EXTRA CREDIT

1
select * from artist
order by name desc
limit 10

2
select * from artist
where name like 'Black%'

3
select * from artist
where name like '%Black%'


1
select * from employee
order by birth_date desc
limit 1

2
select * from employee
order by birth_date asc
limit 1


1
select count(*) from invoice
where billing_state in ('CA', 'TX', 'AZ')

2
select avg(total)
from invoice

1
select playlist_track.track_id
from playlist_track
join playlist on playlist.playlist_id = playlist_track.playlist_id
where playlist.name = 'Music'

2
select t.name
from track t
join playlist_track p on p.track_id = t.track_id
where p.playlist_id = 5

3
select t.name, p.name
from track t
join playlist_track pt on pt.track_id = t.track_id
join playlist p on pt.playlist_id = p.playlist_id

4
select t.name, a.title
from album a
join track t on t.album_id = a.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk'