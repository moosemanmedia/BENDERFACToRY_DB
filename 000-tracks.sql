create table if not exists tracks
(
	id serial not null
		constraint tracks_pk
			primary key,
	hash varchar(128) not null,
	name varchar(128) not null
);

alter table tracks owner to postgres;

create unique index if not exists tracks_id_uindex
	on tracks (id);

create unique index if not exists tracks_hash_uindex
	on tracks (hash);

create unique index if not exists tracks_name_uindex
	on tracks (name);

