insert into artists (artist, nickname) values ('Nik Hanks', 'Nikkon'), ('Anna Vitale', 'Vitalina'), ('Tim Staffofd', 'Tim Staffofd'), ('Liliana Fox', 'Liliana');
insert into genres (genre) values ('pop'), ('rock'), ('electronic music');
insert into albums (album, year) values ('Forest soul', 2003), ('Victorya', 2014), ('Ocean', 2018);
insert into tracks (album, track, time) values (1, 'Bees', '00:02:45'), (1, 'The Sun', '00:03:01'), (2, 'Who are you?', '00:02:38'), (2, 'My favourite name', '00:03:25'), (3, 'Undine', '00:03:21'), (3, 'Ocean life', '00:02:59');
insert into collections (name, year) values ('Why?', 2015), ('Come back to youself', 2018), ('Sun day', 2018), ('Dreams', 2019);
insert into genres_artists (genre_id, artist_id) values (1, 1), (1, 2), (2, 3), (2, 4), (3, 3);
insert into artists_albums (artist_id, album_id) values (1, 2), (2, 2), (3, 3), (4, 1);
insert into collection_track (collection_id, track_id) values (1, 3), (1, 4), (2, 2), (2, 6), (3, 1), (3, 2), (4, 5), (4, 6);