select st_area(geom) / 10000 as ha_county, name from county
order by ha_county desc;

select st_centroid(geom) as centroid from city;

SELECT ST_Distance(point1.geom, point2.geom) AS distance
FROM stadium as point1, stadium as point2 
WHERE point1.name = 'Stadionul Viitorul' AND point2.name = 'Cluj Arena';

select st_perimeter(geom) as romania_perimeter from country;

SELECT ST_Union(geom) AS geom_merge
FROM (
  SELECT geom
  FROM city
  WHERE id IN (2, 7) 
) AS merge;

