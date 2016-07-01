create table albums 
( album_id int unsigned auto_increment primary key not null, 
  album_name char(255) not null,
  artist_id int unsigned not null,
  release_year char(4) not null
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


