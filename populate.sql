insert into actor(actor_name)
values('Bob');
insert into actor(actor_name)
values('Jeff Bleckner');
insert into actor(actor_name)
values('Gene Quintano');

insert into film(film_id, year, title)
values(4622, 1990,	'Honeymoon Academy');
insert into film(film_id, year, title)
values(4623, 1991,	'Hearts on Fire/In Sickness and in Health');
insert into film(film_id, year, title)
values(3672, 1992, 'Mind Twister');

insert into  film_actor(film_film_id, actor_actor_name)
values(4622, 'Bob');
insert into  film_actor(film_film_id, actor_actor_name)
values(4623, 'Jeff Bleckner');
insert into  film_actor(film_film_id, actor_actor_name)
values(3672, 'Gene Quintano');

insert into people(people_name)
values('Bobb');
insert into people(people_name)
values('Boba');
insert into people(people_name)
values('Boban');

insert into likes(people_people_name, actor_actor_name )
values('Boba', 'Bob');
insert into likes(people_people_name, actor_actor_name )
values('Boban', 'Gene Quintano');
insert into likes(people_people_name, actor_actor_name )
values('Bobb', 'Jeff Bleckner');
