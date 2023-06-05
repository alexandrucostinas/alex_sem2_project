select c.name,city.name,s.name from county as c
inner join city 
on c.id = city.county_id
inner join stadium as s
on city.id = s.city_id;

select country.name,county.name,city.name,stadium.name,club.name,player.name,coach.name from country
left join county
on country.id = county.country_id
left join city
on county.id = city.county_id
left join stadium
on city.id = stadium.city_id
left join club
on stadium.id = club.stadium_id
left join player
on club.id = player.club_id
left join coach
on club.id = coach.club_id;