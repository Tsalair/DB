select max(time) from tracks;
select track from tracks where time >= '00:03:30';
select name from collections where year between 2018 and 2020;
select nickname from artists where nickname not like '% %';
select track from tracks where track like '%My%' or track like '%my%';


select genre, genre_id, count(*) from genres g 
join genres_artists ga on g.id = ga.genre_id 
group by genre_id, genre order by count;


select a.id, a.album, count(*) from albums a 
join tracks t  on a.id = t.album 
where year between 2019 and 2020 
group by a.id, a.album;


select a.id, a.album, avg(time) from albums a 
join tracks t  on a.id = t.album 
group by a.id, a.album order by id;


select ar.nickname from artists ar 
where not exists (
	select 1 from albums a
	join artists_albums aa on aa.album_id = a.id 
	where a."year" = 2020 and aa.artist_id = ar.id
);
 

select c.name from collections c 
where exists (
	select 1 from artists a
	join artists_albums aa on a.id = aa.artist_id
	join albums al on al.id = aa.album_id 
	join tracks t on t.album = al.id 
	join collection_track ct on t.id = ct.track_id 
	where a.nickname = 'Tim Staffofd' and ct.collection_id = c.id	
);

