-- Ejercicio 1: Películas más populares producidas en Estados Unidos
SELECT id, title, popularity, vote_average, release_date, production_countries
FROM movies
WHERE production_countries LIKE '%United States%'
ORDER BY popularity DESC;

-- Ejercicio 2: Peor valoradas de Estados Unidos, ordenadas por número de votos
SELECT id, title, popularity, vote_average, vote_count, production_countries
FROM movies
WHERE production_countries LIKE '%United States%'
  AND vote_average <= 5
ORDER BY vote_count DESC;

-- Ejercicio 3: Comprobación previa, ¿release_date guarda la hora?
SELECT release_date
FROM movies
WHERE production_countries LIKE '%Japan%'
LIMIT 5;

-- Ejercicio 3: Películas japonesas estrenadas entre las 22:00 y las 05:00
SELECT id, title, popularity, vote_average, release_date, production_countries
FROM movies
WHERE production_countries LIKE '%Japan%'
  AND LENGTH(release_date) > 10
  AND (strftime('%H', release_date) >= '22'
       OR strftime('%H', release_date) < '05');

-- Ejercicio 4: Películas de Japón, China, India o Corea
SELECT id, title, release_date, vote_average, popularity, production_countries
FROM movies
WHERE production_countries LIKE '%Japan%'
   OR production_countries LIKE '%China%'
   OR production_countries LIKE '%India%'
   OR production_countries LIKE '%Korea%'
ORDER BY production_countries ASC, release_date ASC;

-- Ejercicio 5: Columna NombreFinal con título original, traducido o "Sin título"
SELECT production_countries, original_language, title,
       COALESCE(original_title, title, 'Sin título') AS NombreFinal
FROM movies
ORDER BY production_countries ASC;

-- Ejercicio 6: Películas relacionadas con España
SELECT title, production_countries, original_language, homepage, vote_average
FROM movies
WHERE production_countries LIKE '%España%'
   OR production_countries LIKE '%Spain%'
   OR production_companies LIKE '%España%'
   OR production_companies LIKE '%Spain%';