create table albums 
( album_id int unsigned auto_increment primary key not null, 
  album_name char(255) not null,
  artist_id int unsigned not null,
  release_year int unsigned not null
);


create table artists
( artist_id int unsigned auto_increment primary key not null,
  artist_name char(255) not null,
  genre char(100)
);

create table songs
( song_id int unsigned auto_increment primary key not null,
  song_name char(255) not null,
  artist_id int unsigned not null,
  album_id int unsigned not null
);

insert into artists (artist_name, genre) values ('The Killers', 'Rock');
insert into albums (album_name, artist_id, release_year) values ('Battle Born', 1, 2012);
insert into songs (song_name, artist_id, album_id) values ('Flesh and Bone',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Runaways',1, 1);
insert into songs (song_name, artist_id, album_id) values ('The Way It Was',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Here With Me',1, 1);
insert into songs (song_name, artist_id, album_id) values ('A Matter Of Time',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Deadlines And Commitments',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Miss Atomic Bomb',1, 1);
insert into songs (song_name, artist_id, album_id) values ('The Rising Tide',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Heart of a Girl',1, 1);
insert into songs (song_name, artist_id, album_id) values ('From Here On Out',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Be Still',1, 1);
insert into songs (song_name, artist_id, album_id) values ('Battle Born',1, 1);

