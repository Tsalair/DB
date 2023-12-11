create table if not exists Genres (
	ID serial primary key,
	Genre varchar(60) not null
);


create table if not exists Artists (
	ID serial primary key,
	Artist varchar(60) not null,
	Nickname varchar(60) not null
);
	

create table if not exists Genres_Artists (
	Genre_ID serial references Genres(ID),
	Artist_ID serial references Artists(ID),
	constraint ga primary key (Genre_ID, Artist_ID)
);
	

create table if not exists Albums (
	ID serial primary key,
	Album varchar(60) not null,
	Year int2
);	


create table if not exists Artists_Albums (
	Artist_ID serial references Artists(ID),
	Album_ID serial references Albums(ID),
	constraint aa primary key (Artist_ID, Album_ID)
);
	

create table if not exists Tracks (
	ID serial primary key,
	Album serial references Albums(ID),
	Track varchar(60) not null,
	Time interval
);
	

create table if not exists Collections (
	ID serial primary key, 
	Name varchar(60) not null,
	Year int2
);
	

create table if not exists Collection_Track (
	Collection_ID serial references Collections(ID),
	Track_ID serial references Tracks(Id),
	constraint ct primary key (Collection_ID, Track_ID)
);